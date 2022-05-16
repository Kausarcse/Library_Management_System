<?php 

	$user_id 		= $_SESSION['user_id'];
	$user_name 		= $_SESSION['user_name'];
    $password       = $_SESSION['password'];
    $user_type   	= $_SESSION['user_type'];
    $status 		= $_SESSION['status'];

    if(!isset($user_name))
	{
	   	header('Location: login/login.php');
	}

?>