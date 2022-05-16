<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


$loc_id = $_POST['loc_id'];

$form_data = '';


$sql_for_location = "SELECT * FROM location_info where loc_id = '$loc_id'";

$res_for_location = mysqli_query($con, $sql_for_location);

$row_for_location = mysqli_fetch_assoc($res_for_location);

$form_data = '<div class="panel-heading" style="color:#191970;"><b>Edit Department</b></div> 
				<form class="form-horizontal" action="" style="margin-top:10px;" name="edit_location_form" id="edit_location_form">

						<div class="form-group form-group-sm" id="form-group_for_location_name">
                            <label class="control-label col-sm-3" for="location_name" style="color:#00008B;">Location Name:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="location_name" name="location_name" value = "'.$row_for_location['location_name'].'" required>
                                <input type="hidden" class="form-control" id="location_id" name="location_id" value = "'.$row_for_location['loc_id'].'" required>
                            </div>						
                        </div> 

						<div class="form-group form-group-sm">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button type="button" class="btn btn-primary" id="cat_edit_save" onClick="sending_data_of_edit_location_form_for_saving_in_database()">Submit</button>
                            </div>
						</div>

				</form>';

                echo $form_data;


?>