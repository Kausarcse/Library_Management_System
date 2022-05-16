<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


$book_id = $_POST['book_id'];

$form_data = '';


$sql_for_book = "SELECT * FROM book_list where id = '$book_id'";

$res_for_book = mysqli_query($con, $sql_for_book);

$row_for_book = mysqli_fetch_assoc($res_for_book);

$form_data = '<div class="panel-heading" style="color:#191970;"><b>Edit Book</b></div> 
				<form class="form-horizontal" action="" style="margin-top:10px;" name="edit_book_form" id="edit_book_form">

						<div class="form-group form-group-sm" id="form-group_for_book_name">
                            <label class="control-label col-sm-3" for="book_name" style="color:#00008B;">Book Name: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="book_name" name="book_name" value = "'.$row_for_book['book_name'].'" required>
                                <input type="hidden" class="form-control" id="book_id" name="book_id" value = "'.$row_for_book['book_id'].'" required>
                            </div>						
                        </div> 

                        <div class="form-group form-group-sm" id="form-group_for_isbn_number">
                            <label class="control-label col-sm-3" for="isbn_number" style="color:#00008B;">ISBN Number: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="isbn_number" name="isbn_number" value = "'.$row_for_book['isbn_number'].'" required>
                            </div>						
                        </div> 

                        <div class="form-group form-group-sm" id="form-group_for_category_name">
                            <label class="control-label col-sm-3" for="category_name" style="color:#00008B;">Category Name: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                            <select  class="form-control" id="category_name" name="category_name">
                                <option value="'.$row_for_book['cat_id'].'?fs?'.$row_for_book['category_name'].'" selected>'.$row_for_book['category_name'].'</option>    
                                <option select="selected" value="">Select category Name</option>';
                                       
                                           $sql = "SELECT * from `category` order by cat_id ASC";
                                            $result= mysqli_query($con,$sql) or die(mysqli_error($con));
                                            while( $row = mysqli_fetch_array( $result))
                                            {
                                                $form_data .= '<option value="'.$row['cat_id'].'?fs?'.$row['category_name'].'">'.$row['category_name'].'</option>';    
                                            }

                             $form_data .= '</select>
                             
                            </div>						
                        </div> 

                        <div class="form-group form-group-sm" id="form-group_for_author_name">
                            <label class="control-label col-sm-3" for="author_name" style="color:#00008B;">Author Name: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                            <select  class="form-control" id="author_name" name="author_name">
                                <option value="'.$row_for_book['author_id'].'?fs?'.$row_for_book['author_name'].'" selected>'.$row_for_book['author_name'].'</option>    
                                <option select="selected" value="">Select category Name</option>';
                                       
                                            $sql = "SELECT * from `author` order by author_id ASC";
                                            $result= mysqli_query($con,$sql) or die(mysqli_error($con));
                                            while( $row = mysqli_fetch_assoc( $result))
                                            {
                                                $form_data .= '<option value="'.$row['author_id'].'?fs?'.$row['author_name'].'">'.$row['author_name'].'</option>';    
                                            }

                             $form_data .= '</select>
                            </div>						
                        </div> 

                        <div class="form-group form-group-sm" id="form-group_for_location_name">
                            <label class="control-label col-sm-3" for="location_name" style="color:#00008B;">Location Name: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                            <select  class="form-control" id="location_name" name="location_name">
                                <option value="'.$row_for_book['loc_id'].'?fs?'.$row_for_book['location_name'].'" selected>'.$row_for_book['location_name'].'</option>    
                                <option select="selected" value="">Select category Name</option>';
                                       
                                            $sql = "SELECT * from `location_info` order by loc_id ASC";
                                            $result= mysqli_query($con,$sql) or die(mysqli_error($con));
                                            while( $row = mysqli_fetch_assoc($result))
                                            {
                                                $form_data .= '<option value="'.$row['loc_id'].'?fs?'.$row['location_name'].'">'.$row['location_name'].'</option>';    
                                            }

                             $form_data .= '</select>
                            </div>						
                        </div> 

                        <div class="form-group form-group-sm" id="form-group_for_quantity">
                            <label class="control-label col-sm-3" for="book_quantity" style="color:#00008B;">Quantity: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <input type="number" class="form-control" id="book_quantity" name="book_quantity" value = "'.$row_for_book['quantity'].'" required>
                            </div>						
                        </div> 

						<div class="form-group form-group-sm">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button type="button" class="btn btn-primary" id="cat_edit_save" onClick="sending_data_of_edit_book_form_for_saving_in_database()">Submit</button>
                            </div>
						</div>

				</form>';

                echo $form_data;


?>


