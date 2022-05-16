<header class="main-header" style="width: 117%;background-color: #2B579A;">
      <!-- Logo -->
     
          <div class="navbar-custom-menu">
            
                <ul class="nav nav-tabs">
                  <!-- User Account: style can be found in dropdown.less -->
                  <li class="dropdown user user-menu dropdown col-md-offset-11 pull-right bg-green" >
                          <a class="dropdown-toggle " data-toggle="dropdown" href="#"><span style="color:#FFFFFF">Menu</span> 
                           <span class="caret"></span></a>
                        <ul class="dropdown-menu" style="min-width: 120px;">
                        <li class="user-header">
                              <div class="pull-right">
                                <!-- <a href="#" class="btn btn-default">Change Password</a> -->
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Change Password</button>
                              </div> 

                            
                          </li>
                          <li class="user-footer">
                              <div class="pull-right">
                              <img src="img/<?php echo $row['profile_picture'] ?>" alt="..." class="img-circle profile_img" style="width: 30px; height:30px; margin-bottom: 4px; background: #ffffff;">
                              <button type="button" class="btn btn-warning"><a href="login/logout.php">Logout</a></button>  
                              </div> 

                            
                          </li> 
                        </ul> <!-- End of <ul class="dropdown-menu"> -->
                  </li> <!-- End of <li class="dropdown user user-menu"> -->
                </ul> <!-- End of <ul class="nav navbar-nav"> -->
            </div> <!-- End of <div class="navbar-custom-menu"> -->
      <!-- </nav> -->
    </header>


    <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="text-align: center;font-size:20px;">Change Password</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" action="" style="margin-top:10px;" name="change_password_form" id="change_password_form">

          <div class="form-group form-group-sm" id="div_new_password">
            <label class="control-label col-sm-4" for="new_password" style="color:#00008B;">Your New Password: <span style="color: red;">*</span></label>
            <div class="col-sm-6">
              <input type="password" class="form-control" id="new_password" name="new_password" placeholder="Enter your new password" required>
            </div>					
          </div> 
          <div class="form-group form-group-sm" id="div_confirm_new_password">
            <label class="control-label col-sm-4" for="confirm_new_password" style="color:#00008B;">Confirm New Password: <span style="color: red;">*</span></label>
            <div class="col-sm-6">
              <input type="password" class="form-control" id="confirm_new_password" name="confirm_new_password" placeholder="Enter confirm new password" required>
            </div>					
          </div> 
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="sending_data_for_change_password()">Submit</button>
      </div>
    </div>
  </div>
</div>

<script>

  function Form_Validation_password()
  {
    const filter_password = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$/;
    
    if(!filter_password.test(document.getElementById("new_password").value))
		{
			alert('Please provide password with atleast one number, one special character, and minimum 8 digit and maximum 20 digit.');
			document.getElementById("new_password").focus();
			return false;
		}
		else if(document.getElementById("confirm_new_password").value.trim()=="")
		{
      		alert("Please Re-type Password");
      		document.getElementById("confirm_new_password").focus();
      		return false;
		}
		else if(document.getElementById("confirm_new_password").value.trim() != document.getElementById("new_password").value.trim())
		{
      		alert("Password does not matched.");
      		document.getElementById("confirm_new_password").focus();
      		return false;
		}
  }

  function sending_data_for_change_password()
  {
    var validate_password = Form_Validation_password();
    var url_encoded_form_data = $("#change_password_form").serialize();
   	
    if(validate_password != false)
    { 
    	$.ajax({
			 		url: 'login/changed_password.php',
			 		dataType: 'text',
			 		type: 'POST',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);
               $('#exampleModal').modal('hide')			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({

    }
  }

</script>

