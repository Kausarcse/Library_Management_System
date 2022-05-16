<?php
session_start();
error_reporting(0);
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



$user_id=$_POST['user_id'];

  $data='<option value="" selected>Select book name</option>';
// $data = '';
   
		 $sql = "SELECT distinct book_name FROM issue_info WHERE `user_id` = '$user_id'";
         
		 $result= mysqli_query($con,$sql) or die(mysqli_error($con));

		 while($row = mysqli_fetch_array( $result))
		 {    
		 	$data .= '<option value="'.$row['book_name'].'?fs?'.$user_id.'"> '.$row['book_name'].' </option>';

		 }

		 echo $data;


?>