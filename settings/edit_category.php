<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


$cat_id = $_POST['cat_id'];

$form_data = '';


$sql_for_category = "SELECT * FROM category where id = '$cat_id'";

$res_for_category = mysqli_query($con, $sql_for_category);

$row_for_category = mysqli_fetch_assoc($res_for_category);

$form_data = '<div class="panel-heading" style="color:#191970;"><b>Edit Category</b></div> 
				<form class="form-horizontal" action="" style="margin-top:10px;" name="edit_category_form" id="edit_category_form">

						<div class="form-group form-group-sm" id="form-group_for_category_name">
                            <label class="control-label col-sm-3" for="category_name" style="color:#00008B;">Category Name:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="category_name" name="category_name" value = "'.$row_for_category['category_name'].'" required>
                                <input type="hidden" class="form-control" id="category_id" name="category_id" value = "'.$row_for_category['cat_id'].'" required>
                            </div>						
                        </div> 

						<div class="form-group form-group-sm">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button type="button" class="btn btn-primary" id="cat_edit_save" onClick="sending_data_of_edit_category_form_for_saving_in_database()">Submit</button>
                            </div>
						</div>

				</form>';

                echo $form_data;


?>