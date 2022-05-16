<?php
session_start();
require_once("login/db_session_chk.php");


$user_name=$_SESSION['user_name'];
$user_id=$_SESSION['user_id'];
$user_type=$_SESSION['user_type'];
$select_sql_for_user="SELECT * FROM `user_login` 
						WHERE `user_name`='$user_name'
							and `user_id` = '$user_id'
							and `user_type` = '$user_type'";
							
$result= mysqli_query($con, $select_sql_for_user) or die(mysqli_error($con));
$row=mysqli_fetch_assoc($result);

?>

<style>
.sub_menu   /* This is for Sub Menu Button Styling */
{
	display:block;
	margin:1px;
	width:110%;
	
	background-color: #2B579A; 
	color:#FFFFFF; 
	border-style: dotted;
	border-color: #2B579A; 
	margin-top:2px;

}


</style>
			

	<?php 
	        switch($_SESSION['user_type']){

	        case 'Admin':

	            include('admin_menu.php');

	            break;

	        case 'Super Admin':

	            include('super_user_menu.php');

	            break;

	        case 'User':

	            include('user_menu.php');

	            break;

	    }
	  ?>
			
	

                
		