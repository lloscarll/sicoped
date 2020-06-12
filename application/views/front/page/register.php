<?php 
        echo validation_errors(); 
        
        if(isset($errorMsg)){
          echo '<div class="alert alert-error">
                  <button type="button" class="close" data-dismiss="alert">&times;</button>';
          echo $errorMsg;
          echo '</div>';
          unset($errorMsg);
        }else if(isset($successMsg)){
          echo '<div class="alert alert-success">
                  <button type="button" class="close" data-dismiss="alert">&times;</button>
                  <strong>Well done!</strong> ';
          echo $successMsg;
          echo '</div>';
          unset($successMsg);
        }
      ?>
    <form class="form-horizontal" action="<?php echo base_url()."register/add"?>" method="POST">
                <div class="control-group">
                    <label class="control-label" for="inputFname">First Name</label>
                    <div class="controls">
                      <input type="text" placeholder="1-20 characters a-z (lowercase)" name="fname">
                    </div>
                  </div>
                <div class="control-group">
                    <label class="control-label" for="inputLname">Last Name</label>
                    <div class="controls">
                      <input type="text" placeholder="1-20 characters a-z (lowercase)" name="lname">
                    </div>
                  </div>
                <div class="control-group">
                    <label class="control-label" for="inputLname">Gender</label>
                    <div class="controls">
                      <input type="radio" name="gender" value="male"> Male
                      <input type="radio" name="gender" value="female"> Female
                    </div>
                  </div>
                <div class="control-group">
                <label class="control-label" for="inputUsername">Username</label>
                    <div class="controls">
                      <input type="text" placeholder="6-8  character a-z A-Z" name="username">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="inputEmail">Email</label>
                    <div class="controls">
                      <input type="email" id="inputEmail" placeholder="Email" name="email">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="inputSignupPassword">Password</label>
                    <div class="controls">
                      <input type="password" id="inputSignupPassword" placeholder="Password" name="password">
                    </div>
                  </div>
                  <div class="control-group">
                    <div class="controls">
                      <button type="submit" class="btn">Sign up</button>
                    </div>
                    <p class="aligncenter margintop20">
                      Already have an account? <a href="#mySignin" data-dismiss="modal" aria-hidden="true" data-toggle="modal">Sign in</a>
                    </p>
                  </div>
            </form>
            