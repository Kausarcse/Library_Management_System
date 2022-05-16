<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

?>
<script type='text/javascript' src='user/user_info_form_validation.js'></script>

<style>

.form-group		/* This is for reducing Gap among Form's Fields */
{

	margin-bottom: 5px;

}

</style>

<script>

function Remove_Value_Of_This_Element(element_name)
{

	 document.getElementById(element_name).value='';
	 var alternate_field_of_date = "alternate_"+element_name;

	 if(typeof(alternate_field_of_date) != 'undefined' && alternate_field_of_date != null) // This is for deleting Alternative Field of Date if exists
	 {
		document.getElementById(alternate_field_of_date).value='';
	 }

}

function Reset_Radio_Button(radio_element)
{

		var radio_btn = document.getElementsByName(radio_element);
		for(var i=0;i<radio_btn.length;i++) 
		{
				radio_btn[i].checked = false;
		}


}

function Reset_Checkbox(checkbox_element)
{
		for(var i=0;i<checkbox_element.length;i++)
		{

				checkbox_element[i].checked = false;

		}
}
</script>

<script>




 function sending_data_of_user_info_form_for_saving_in_database()
 {
       var validate = User_Info_Form_Validation();
	
       //var url_encoded_form_data = $("#user_info_form").serialize(); //This will read all control elements value of the form	
       var url_encoded_form_data = new FormData(document.getElementById('user_info_form'));
       url_encoded_form_data.append('profile_picture', document.getElementById('profile_picture'));
	
       if(validate != false)
	   {
	   		$.ajax({
			 		url: 'user/user_info_saving.php',
			 		type: 'post',
			 		data: url_encoded_form_data,
			 		processData: false,
			 		contentType: false,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax

       }//End of if(validate != false)

 }//End of function sending_data_of_user_info_form_for_saving_in_database()

 /***************************************************** FOR AUTO COMPLETE********************************************************************/

$('.for_auto_complete').chosen();


/***************************************************** FOR AUTO COMPLETE********************************************************************/


</script>
<div class="col-sm-12 col-md-12 col-lg-12">

		<div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->

				<div class="panel-heading" style="color:#191970;"><b>Create User</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

				<nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item active" aria-current="page">Home</li>
					     <li class="breadcrumb-item"><a onclick="load_page('user/user_info.php')">Create User</a></li>
					  </ol>
				</nav>

				<form class="form-horizontal" action="" style="margin-top:10px;" name="user_info_form" id="user_info_form" enctype="multipart/form-data" data-parsley-validate>
					
					<div class="form-group form-group-sm" id="form-group_for_user_name">
						<label class="control-label col-sm-3" for="user_name" style="color:#00008B;">Employee Name: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="user_name" name="user_name" placeholder="Enter Employee Name" required>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_user_name"> -->

					<div class="form-group form-group-sm" id="form-group_for_user_id">
						<label class="control-label col-sm-3" for="user_id" style="color:#00008B;">Employee ID: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="user_id" name="user_id" placeholder="Enter User ID" required>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_user_id"> -->

					<div class="form-group form-group-sm" id="form-group_for_email">
						<label class="control-label col-sm-3" for="email" style="color:#00008B;">Email: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<input type="email" class="form-control" id="email" name="email" placeholder="Enter your Email Id" required>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_email"> -->

					<div class="form-group form-group-sm" id="form-group_for_contact_no">
						<label class="control-label col-sm-3" for="contact_no" style="color:#00008B;">Contact No: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<input type="number" class="form-control" id="contact_no" name="contact_no" placeholder="Enter your Contact No" required>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_contact_no"> -->

					<div class="form-group form-group-sm" id="form-group_for_nid">
						<label class="control-label col-sm-3" for="national_id_card" style="color:#00008B;">NID Number: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<input type="number" class="form-control" id="national_id_card" name="national_id_card" placeholder="Enter your national id card" required>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_nid"> -->

					<div class="form-group form-group-sm" id="form-group_for_gender">
						<label class="control-label col-sm-3" for="gender" style="color:#00008B;">Gender: <span style="color: red;">*</span></label>
						<div class="col-sm-2">
							<input type="radio" id="male" name="gender" value="male" required><label for="male">Male</label>
						</div>
						
						<div class="col-sm-1">
							<input type="radio" id="female" name="gender" value="female" required><label for="female">Female</label>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_gender"> -->
							
					<div class="form-group form-group-sm" id="form-group_for_dob">
						<label class="control-label col-sm-3" for="date_of_birth" style="color:#00008B;">Date of Birth: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<input type="date" class="form-control" id="date_of_birth" name="date_of_birth" placeholder="Enter your date of birth" required>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_dob"> -->

					<div class="form-group form-group-sm" id="form-group_for_department">
						<label class="control-label col-sm-3" for="department" style="margin-right:0px; color:#00008B;">Department: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<select  class="form-control" id="department" name="department" required>
								<option select="selected" value="select">Select Department</option>
								<?php 
									$sql = 'select department_name from `department_info` order by `department_name`';
									$result= mysqli_query($con,$sql) or die(mysqli_error($con));
									while( $row = mysqli_fetch_array( $result))
									{
										echo '<option value="'.$row['department_name'].'">'.$row['department_name'].'</option>';
									}
								?>
							</select>
							<script>
									$("#department").select2({
										placeholder: "Select department",
										theme: "classic",
										selectOnClose: true,
										closeOnSelect: true,
										allowClear: true
									});
							</script>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_department"> -->

					<div class="form-group form-group-sm" id="form-group_for_designation">
						<label class="control-label col-sm-3" for="designation" style="margin-right:0px; color:#00008B;">Designation: <span style="color: red;">*</span></label>
							<div class="col-sm-5">
								<select  class="form-control " id="designation" name="designation">
									<option select="selected" value="select">Select Designation</option>
									<?php 
										$sql = 'select designation from `designation_info` order by `designation`';
										$result= mysqli_query($con,$sql) or die(mysqli_error($con));
										while( $row = mysqli_fetch_array( $result))
										{
											echo '<option value="'.$row['designation'].'">'.$row['designation'].'</option>';
										}
									?>
								</select>
								<script>
										$("#designation").select2({
											placeholder: "Select designation",
											theme: "classic",
											selectOnClose: true,
											closeOnSelect: true,
											allowClear: true
										});
								</script>
							</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_designation"> -->

					<div class="form-group form-group-sm" id="form-group_for_user_type">
						<label class="control-label col-sm-3" for="user_type" style="margin-right:0px; color:#00008B;">User Type: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<select  class="form-control " id="user_type" name="user_type">
										<option select="selected" value="select">Select User Type</option>
										<option value="Admin">Admin</option>
										<option value="Super Admin">Super Admin</option>
										<option value="User">User</option>
							</select>
							<script>
									$("#user_type").select2({
										placeholder: "Select User Type",
										theme: "classic",
										selectOnClose: true,
										closeOnSelect: true,
										allowClear: true
									});
							</script>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_user_type"> -->

					<div class="form-group form-group-sm" id="form-group_for_status">
						<label class="control-label col-sm-3" for="status" style="color:#00008B;">Status: <span style="color: red;">*</span></label>
						<div class="col-sm-2">
							<input type="radio" id="active" name="status" value="Active" required><label for="active">Active</label>
						</div>
						
						<div class="col-sm-1">
							<input type="radio" id="inactive" name="status" value="Inactive" required><label for="inactive">Inactive</label>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_status"> -->

					<div class="form-group form-group-sm" id="form-group_for_password">
						<label class="control-label col-sm-3" for="password" style="color:#00008B;">Password: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_password"> -->

					<div class="form-group form-group-sm" id="form-group_for_confirm_password">
						<label class="control-label col-sm-3" for="confirm_password" style="color:#00008B;">Confirm Password: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Enter Confirm Password" required>
						</div>
					</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_confirm_password"> -->

					<div class="form-group form-group-sm" id="form-group_for_profile_picture">
						<label class="control-label col-sm-3" style="margin-right:0px; color:#00008B;">Profile Picture: <span style="color: red;">*</span></label>
						<div class="col-sm-5">
							<input type="file" class="form-control" id="profile_picture" name="profile_picture" >
						</div>
					</div> <!-- end of <div class="form-group form-group-sm" id="form-group_for_profile_picture"> -->

					<div class="form-group form-group-sm">
						<div class="col-sm-offset-3 col-sm-5">
							<button type="button" class="btn btn-primary" onClick="sending_data_of_user_info_form_for_saving_in_database()">Save</button>
							<!-- <button type="reset" class="btn btn-success">Clear</button> -->
						</div>
					</div>

				</form>

		</div> <!-- End of <div class="panel panel-default"> -->

</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->