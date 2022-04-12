<?php
defined('BASEPATH') or exit('No direct script access allowed');
require_once(APPPATH . '../vendor/autoload.php');

use Twilio\Rest\Client;

class Auth extends CI_Controller
{

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */
    public function index()
    {

        if ($this->session->userdata('logged_in')) {
            //redirect them to the dasboard page
            redirect('dashboard', 'refresh');
        }

        $data['info'] = $this->settingsModel->getInfo();
        $data['title'] = 'Login';
        $this->load->view('login', $data);
    }

    public function loginSubmit()
    {

        $query = $this->db->query("SELECT `number` FROM barangay_info   WHERE id=1");
        $sys = $query->row();

        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() == false) {

            $this->session->set_flashdata('errors', validation_errors());
        } else {

            $data = array(
                'username' => $this->input->post('username'),
                'password' => sha1($this->input->post('password'))
            );

            $login = $this->userModel->login($data);

            if ($login) {
                // Find your Account SID and Auth Token at twilio.com/console
                // and set the environment variables. See http://twil.io/secure
                $sid = "AC83d76f222c4f50b7e846c9e0cf20b3f0";
                $token = "192f8ca3e9c81ee9be0e979a41a8b634";
                $twilio = new Client($sid, $token);

                $msg = "Hi, this user has been logged in to the system: " . $login['username'] . ".";
                $phone = $sys->number;

                // $twilio->messages->create(
                //     $phone, // to
                //     ["body" => $msg, "from" => "+18303562695"]
                // );

                $login_data = array(
                    'id' => $login['id'],
                    'username' => $login['username'],
                    'email' => $login['email'],
                    'role' => $login['user_type'],
                    'avatar' => $login['avatar'],
                    'logged_in' => TRUE
                );

                $this->session->set_userdata($login_data);
                $this->session->set_flashdata('message', 'Welcome back, ' . $this->input->post('username') . '. You are successfully logged in!');
                redirect("dashboard", 'refresh');
            } else {

                $this->session->set_flashdata('errors', 'Username/Password is incorrect!');
            }
        }

        redirect("login", 'refresh');
    }

    public function users()
    {
        if (!$this->session->userdata('logged_in')) {
            //redirect them to the dasboard page
            redirect('login', 'refresh');
        }

        $data['users'] = $this->userModel->getUsers();

        $data['title'] = 'User Management';
        $this->base->load('default', 'user/users', $data);
    }

    public function createUser()
    {

        $validator = array('success' => false, 'msg' => array());

        $config['upload_path'] = 'assets/uploads/avatar/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        $this->form_validation->set_rules('username', 'Username', 'required|min_length[5]|is_unique[users.username]');
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_rules('user_type', 'User Role', 'required');

        if (!empty($this->input->post('email'))) {
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[users.email]');
        }

        if ($this->form_validation->run() == FALSE) {

            $validator['success'] = false;
            $validator['msg'] = validation_errors();
        } else {
            if (empty($this->input->post('profileimg')) && !$this->upload->do_upload('profile')) {
                $userData = array(
                    'username' => $this->input->post('username'),
                    'email' => $this->input->post('email'),
                    'password' => sha1($this->input->post('password')),
                    'user_type' => $this->input->post('user_type'),
                );
            } else if (!empty($this->input->post('profileimg')) && !$this->upload->do_upload('profile')) {

                $userData = array(
                    'username' => $this->input->post('username'),
                    'email' => $this->input->post('email'),
                    'password' => sha1($this->input->post('password')),
                    'user_type' => $this->input->post('user_type'),
                    'avatar' => $this->input->post('profile'),
                );
            } else {

                $file = $this->upload->data();
                //Resize and Compress Image
                $config['image_library'] = 'gd2';
                $config['source_image'] = 'assets/uploads/avatar/' . $file['file_name'];
                $config['create_thumb'] = FALSE;
                $config['maintain_ratio'] = TRUE;
                $config['quality'] = '60%';
                $config['new_image'] = 'assets/uploads/avatar/' . $file['file_name'];

                $this->load->library('image_lib', $config);
                $this->image_lib->resize();


                $userData = array(
                    'username' => $this->input->post('username'),
                    'email' => $this->input->post('email'),
                    'password' => sha1($this->input->post('password')),
                    'user_type' => $this->input->post('user_type'),
                    'avatar' => $file['file_name'],
                );
            }

            $insert = $this->userModel->save($userData);

            if ($insert) {
                $validator['success'] = true;
                $validator['msg'] = 'User successfully added!';
            } else {
                $validator['success'] = false;
                $validator['msg'] = 'Something went wrong. Please contact the administrator';
            }
        }

        echo json_encode($validator);
    }


    public function update_profile()
    {

        $validator = array('success' => false, 'msg' => array());

        $config['upload_path'] = 'assets/uploads/avatar/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        if (!empty($this->input->post('email'))) {
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        }

        if ($this->form_validation->run() == FALSE) {

            $validator['success'] = false;
            $validator['msg'] = validation_errors();
        } else {

            if (empty($this->input->post('profileimg')) && !$this->upload->do_upload('avatar')) {
                $userData = array(
                    'email' => $this->input->post('email'),
                );
            } else if (!empty($this->input->post('profileimg')) && !$this->upload->do_upload('avatar')) {

                $userData = array(
                    'email' => $this->input->post('email'),
                    'avatar' => $this->input->post('profileimg'),
                );
            } else {

                $file = $this->upload->data();
                //Resize and Compress Image
                $config['image_library'] = 'gd2';
                $config['source_image'] = 'assets/uploads/avatar/' . $file['file_name'];
                $config['create_thumb'] = FALSE;
                $config['maintain_ratio'] = TRUE;
                $config['quality'] = '60%';
                $config['new_image'] = 'assets/uploads/avatar/' . $file['file_name'];

                $this->load->library('image_lib', $config);
                $this->image_lib->resize();


                $userData = array(
                    'email' => $this->input->post('email'),
                    'avatar' => $file['file_name'],
                );
            }
            $id = $this->input->post('id');
 
            $update = $this->userModel->update($userData, $id);

            if ($update) {
                $validator['success'] = true;
                $validator['msg'] = 'Your profile has been updated!';

                $unset = array('email', 'avatar');
                $this->session->unset_userdata($unset);

                $data = array('id' => $id);
                $user = $this->userModel->login($data);

                $newset = array('email' => $user['email'], 'avatar' => $user['avatar']);
                $this->session->set_userdata($newset);
            } else {
                $validator['success'] = false;
                $validator['msg'] = 'No changes has been made!';
            }
        }

        echo json_encode($validator);
    }

    public function changePass()
    {

        $validator = array('success' => false, 'msg' => array());

        $this->form_validation->set_rules('username', 'Username', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[8]');
        $this->form_validation->set_rules('passconf', 'Password Confirmation', 'trim|required|matches[password]');

        if ($this->form_validation->run() == FALSE) {

            $validator['success'] = false;
            $validator['msg'] = validation_errors();
        } else {

            $data = array(
                'password' => sha1($this->input->post('password'))
            );

            $id = $this->session->userdata('id');

            $update = $this->userModel->update($data, $id);

            if ($update) {
                $validator['success'] = true;
                $validator['msg'] = 'Your password has been updated!';
            } else {
                $validator['success'] = false;
                $validator['msg'] = 'No changes has been made!';
            }
        }

        echo json_encode($validator);
    }

    public function removeUser($id)
    {

        $delete = $this->userModel->delete($id);

        if ($delete) {
            $this->session->set_flashdata('errors', 'User has been deleted!');
        } else {
            $this->session->set_flashdata('errors', 'Something went wrong!');
        }
        redirect('user', 'refresh');
    }

    public function logout()
    {

        $user_data = $this->session->all_userdata();
        foreach ($user_data as $key => $value) {
            if ($key != 'session_id' && $key != 'ip_address' && $key != 'user_agent' && $key != 'last_activity') {
                $this->session->unset_userdata($key);
            }
        }
        $this->session->sess_destroy();
        redirect(site_url(), 'refresh');
    }
}
