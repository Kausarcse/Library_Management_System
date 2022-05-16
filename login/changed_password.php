<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



$data_previously_saved = "No";
$data_insertion_hampering = "No";


$user_id = $_SESSION['user_id'];
$password = $_SESSION['password'];
$user_name = $_SESSION['user_name'];


$new_password= $_POST['new_password'];
$confirm_new_password= $_POST['confirm_new_password'];


mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));


$sql_for_user_login = "SELECT * from `user_login` where `user_id`='$user_id' and `user_name` = '$user_name' and `password` = '$password'";


$result_for_user_login = mysqli_query($con,$sql_for_user_login) or die(mysqli_error($con));

$sql_for_user_info = "SELECT * from `user_info` where `user_id`='$user_id' and `user_name` = '$user_name' and `password` = '$password'";


$result_for_user_info = mysqli_query($con,$sql_for_user_info) or die(mysqli_error($con));

if(mysqli_num_rows($result_for_user_login)>0 && mysqli_num_rows($result_for_user_info)>0)
{
    $sql_for_user_login_duplicacy = "SELECT * from `user_login` where `user_id`='$user_id' and `user_name` = '$user_name' and `password` = '$new_password' and `confirm_password` = '$confirm_new_password'";

    $result_for_user_login_duplicacy = mysqli_query($con,$sql_for_user_login_duplicacy) or die(mysqli_error($con));
    
    $sql_for_user_info_duplicacy = "SELECT * from `user_info` where `user_id`='$user_id' and `user_name` = '$user_name' and `password` = '$new_password' and `confirm_password` = '$confirm_new_password'";

    $result_for_user_info_duplicacy = mysqli_query($con,$sql_for_user_info_duplicacy) or die(mysqli_error($con));

    if((mysqli_num_rows($result_for_user_login_duplicacy)>0) && (mysqli_num_rows($result_for_user_info_duplicacy)>0))
    {
        $data_previously_saved="Yes";
    }
    else if((mysqli_num_rows($result_for_user_login_duplicacy) < 1) && (mysqli_num_rows($result_for_user_info_duplicacy) < 1))
    {
        $update_sql_statement_for_user_info = "UPDATE `user_info` SET
                                        `password` = '$new_password',
                                        `confirm_password` = '$confirm_new_password'
							    where `user_id` = '$user_id' and `user_name` = '$user_name'";

	    mysqli_query($con,$update_sql_statement_for_user_info) or die(mysqli_error($con));

	    $update_sql_statement_for_user_login = "UPDATE `user_login` SET
                                                `password` = '$new_password',
                                                `confirm_password` = '$confirm_new_password'
									   where `user_id` = '$user_id' and `user_name` = '$user_name'";

	    mysqli_query($con,$update_sql_statement_for_user_login) or die(mysqli_error($con));

        if(mysqli_affected_rows($con)<>1)
        {
            $data_insertion_hampering = "Yes";
        }
    }
}

if($data_previously_saved == "Yes")
{

	mysqli_query($con,"ROLLBACK");
	echo "This password is previously Saved.";

}
else if($data_insertion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "Password is successfully Updated.";

}
else
{
	mysqli_query($con,"ROLLBACK");
	echo "Password is not successfully Updated.";

}

$obj->disconnection();

?>
