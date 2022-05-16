<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


$dept_id = $_POST['dept_id'];

$form_data = '';


$sql_for_department = "SELECT * FROM department_info where dept_id = '$dept_id'";

$res_for_department = mysqli_query($con, $sql_for_department);

$row_for_department = mysqli_fetch_assoc($res_for_department);

$form_data = '<div class="panel-heading" style="color:#191970;"><b>Edit Department</b></div> 
				<form class="form-horizontal" action="" style="margin-top:10px;" name="edit_department_form" id="edit_department_form">

						<div class="form-group form-group-sm" id="form-group_for_department_name">
                            <label class="control-label col-sm-3" for="department_name" style="color:#00008B;">Department Name:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="department_name" name="department_name" value = "'.$row_for_department['department_name'].'" required>
                                <input type="hidden" class="form-control" id="department_id" name="department_id" value = "'.$row_for_department['dept_id'].'" required>
                            </div>						
                        </div> 

						<div class="form-group form-group-sm">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button type="button" class="btn btn-primary" id="cat_edit_save" onClick="sending_data_of_edit_department_form_for_saving_in_database()">Submit</button>
                            </div>
						</div>

				</form>';

                echo $form_data;


?>