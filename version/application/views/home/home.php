<div class="container-fluid text-light">
    <div class="row align-items-center mt-5">
        <div class="col-md-3 mt-5 text-center">
            <div class="row">
                <div class="col">
                    <img src="<?= site_url('assets/uploads/') . $info->brgy_logo ?>" class="img-fluid brgy" width="220">
                </div>
                <div class="col" id="img-town">
                    <img src="<?= site_url('assets/uploads/') .  $info->city_logo ?>" class="img-fluid">
                </div>
            </div>
        </div>
        <div class="col-md-6 mt-5">
            <div class="text-center">
                <h1 class="welcome_text">Welcome to</h1>
                <h1 class="font-weight-bold welcome_text">Barangay <?= $info->brgy_name ?></h1>
            </div>
            <div class="text-center mt-5">
                <h5 class="text-capitalize"><?= $info->street . ', ' . $info->purok . ', ' . $info->brgy_name . ', ' . $info->town . ', ' . $info->province ?></h5>
                <h5>Open Hours of Barangay: Monday to Friday (8AM - 5PM)</h5>
                <h5><a href="mailto:<?= $info->email ?>"><?= $info->email ?></a> / <a href="tel:<?= $info->number ?>"><?= $info->number ?></a></h5>
            </div>
            <div class="text-center">
                <a href="<?= site_url('client/about-us') ?>" class="btn btn-outline-secondary" id="about-btn">About Us</a>
            </div>
        </div>
        <div class="col-md-3 mt-5 text-center">
            <img src="<?= site_url('assets/uploads/') . $info->city_logo ?>" class="img-fluid img-town" width="220">
        </div>
    </div>
</div>