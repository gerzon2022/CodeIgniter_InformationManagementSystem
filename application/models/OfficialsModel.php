<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class OfficialsModel extends CI_Model {

	public function __contruct(){
        $this->load->database();
    }

    public function getOfficials(){
        $this->db->select('*,officials.id as id, chairmanship.id as chair_id, position.id as pos_id');
        $this->db->from('officials');
        $this->db->join('chairmanship', 'chairmanship.id = officials.chairmanship');
        $this->db->join('position', 'position.id = officials.position');
        $this->db->order_by("position.pos_order", "asc");
        $query = $this->db->get();
        return $query->result_array();
    }

    public function getkagawadOfficial(){
        $this->db->select('*');
        $this->db->from('officials');
        $this->db->join('chairmanship', 'chairmanship.id = officials.chairmanship');
        $this->db->join('position', 'position.id = officials.position');
        $this->db->where("status", "Active");
        $this->db->where("position.pos_order >", 1);
        $this->db->where("position.pos_order <", 9);
        $this->db->order_by("position.pos_order", "asc");
        $query = $this->db->get();
        return $query->result_array();
    }

    public function getselectedOfficial(){
        $this->db->select('*, position.position as position');
        $this->db->from('officials');
        $this->db->join('chairmanship', 'chairmanship.id = officials.chairmanship');
        $this->db->join('position', 'position.id = officials.position');
        $this->db->where("status", "Active");
        $this->db->like("position.position", 'SK');
        $this->db->or_like("position.position", 'Secretary');
        $this->db->or_like("position.position", 'Treasurer');
        $this->db->order_by("position.pos_order", "asc");
        $query = $this->db->get();
        return $query->result_array();
    }


    public function getCaptain(){
        $this->db->select('*');
        $this->db->from('officials');
        $this->db->join('position', 'position.id = officials.position');
        $this->db->where("status", "Active");
        $this->db->where("position.pos_order", 1);
        $query = $this->db->get();
        return $query->row();
    }

    public function save($data){
        $this->db->insert('officials',$data);
        return $this->db->affected_rows();
    }

    public function update($data,$id){
        $this->db->update('officials',$data, "id=".$id);
        return $this->db->affected_rows();
    }

    public function delete($id){
        $this->db->where('id', $id);
        $this->db->delete('officials');
        return $this->db->affected_rows();
    }
}
?>