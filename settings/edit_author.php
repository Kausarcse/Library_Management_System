<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

$author_id = $_POST['author_id'];

$form_data = '';


$sql_for_author = "SELECT * FROM author where id = '$author_id'";

$res_for_author = mysqli_query($con, $sql_for_author);

$row_for_author = mysqli_fetch_assoc($res_for_author);

$form_data = '<div class="panel-heading" style="color:#191970;"><b>Edit Author</b></div> 
				<form class="form-horizontal" action="" style="margin-top:10px;" name="edit_author_form" id="edit_author_form">

						<div class="form-group form-group-sm" id="form-group_for_author_name">
                            <label class="control-label col-sm-3" for="author_name" style="color:#00008B;">Author Name:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="author_name" name="author_name" value = "'.$row_for_author['author_name'].'" required>
                                <input type="hidden" class="form-control" id="author_id" name="author_id" value = "'.$row_for_author['author_id'].'" required>
                            </div>						
                        </div> 

						<div class="form-group form-group-sm">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button type="button" class="btn btn-primary" id="auth_edit_save" onClick="sending_data_of_edit_author_form_for_saving_in_database()">Submit</button>
                            </div>
						</div>

				</form>';

                echo $form_data;


?>