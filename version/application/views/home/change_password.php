<div class="container text-light">
    <div class="text-center mt-3 bg-white text-dark p-5">
        <h1 class="welcome_text">Barangay <?= $info->brgy_name ?></h1>
        <div class="row  mt-5">
            <div class="col-md-4">
                <img src="<?= site_url('assets/uploads/') . $info->brgy_logo ?>" class="img-fluid brgy">
            </div>
            <div class="col-md-8 mt-5">
                <?php if ($this->session->flashdata('message')) : ?>
                    <div class="alert alert-<?= $this->session->flashdata('success') ?> alert-dismissible fade show" role="alert">
                        <small><?= $this->session->flashdata('message') ?></small>
                    </div>
                <?php endif ?>
                <form method="POST" action="<?= site_url('auth/resetResPass') ?>" id="register_form">
                    <div class="form-group">
                        <input class="form-control-lg w-100" placeholder="Username" required name="username" value="<?= $this->session->flashdata('username') ?>" />
                        <input type="hidden" required name="user_id" value="<?= $this->session->flashdata('user_id') ?>" />
                    </div>
                    <div class="form-group">
                        <input class="form-control-lg w-100" id="password" name="password" type="password" required="" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" />
                        <span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password">Show</span>
                    </div>
                    <div class="form-group">
                        <input class="form-control-lg w-100" id="conpassword" name="conpassword" type="password" required="" placeholder="Confirm Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" />
                        <span toggle="#conpassword" class="fa fa-fw fa-eye field-icon toggle-password">Show</span>
                    </div>
                    <button class="btn btn-warning btn-lg w-100 mt-3" type="submit" style="border-radius: 1px;">CHANGE PASSWORD</button>
                </form>
            </div>
        </div>
    </div>
</div>