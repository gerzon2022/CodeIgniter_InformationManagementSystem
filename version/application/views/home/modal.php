<div class="modal fade" id="forgotPassword" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Forgot Password?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>

            </div>
            <div class="modal-body">
                <p>Please answer the security question to reset your password!</p>
                <form method="POST" action="<?= site_url('auth/security_check') ?>">
                    <div class="form-group">
                        <label for="position">Username</label>
                        <input class="form-control mt-1" placeholder="Enter username" required name="username" />
                    </div>
                    <div class="form-group">
                        <label for="position">Question 1</label>
                        <select class="form-control" name="question_1">
                            <option value="1">In what city were you born?</option>
                            <option value="2">What is the name of your favorite pet?</option>
                            <option value="3">What is your mother's maiden name?</option>
                            <option value="4">What high school did you attend?</option>
                            <option value="5">What is the name of your first school?</option>
                            <option value="6">What was the make of your first car?</option>
                            <option value="7">What was your favorite food as a child?</option>
                        </select>
                        <input class="form-control mt-1" placeholder="Answer 1" required name="answer_1" />
                    </div>
                    <div class="form-group">
                        <label for="position">Question 2</label>
                        <select class="form-control" name="question_2">
                            <option value="1">In what city were you born?</option>
                            <option value="2" selected>What is the name of your favorite pet?</option>
                            <option value="3">What is your mother's maiden name?</option>
                            <option value="4">What high school did you attend?</option>
                            <option value="5">What is the name of your first school?</option>
                            <option value="6">What was the make of your first car?</option>
                            <option value="7">What was your favorite food as a child?</option>
                        </select>
                        <input class="form-control mt-1" placeholder="Answer 2" required name="answer_2" />
                    </div>
                    <div class="form-group">
                        <label for="position">Question 3</label>
                        <select class="form-control" name="question_3">
                            <option value="1">In what city were you born?</option>
                            <option value="2">What is the name of your favorite pet?</option>
                            <option value="3" selected>What is your mother's maiden name?</option>
                            <option value="4">What high school did you attend?</option>
                            <option value="5">What is the name of your first school?</option>
                            <option value="6">What was the make of your first car?</option>
                            <option value="7">What was your favorite food as a child?</option>
                        </select>
                        <input class="form-control mt-1" placeholder="Answer 3" required name="answer_3" />
                    </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" id="res_id" name="id">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Request Reset</button>
            </div>
            </form>
        </div>
    </div>
</div>