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

$category_id= $_POST['category_id'];

$category_name= $_POST['category_name'];


mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));


$select_sql_for_duplicacy="SELECT * from `category` where `cat_id` = '$category_id' and `category_name`='$category_name'";

$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));


if(mysqli_num_rows($result)>0)
{
    
	$data_previously_saved="Yes";

} 

else if( mysqli_num_rows($result) < 1)
{
	
	$update_sql_statement="UPDATE `category` SET `category_name`= '$category_name' 
                                                WHERE 
                                                cat_id = '$category_id'";

	mysqli_query($con,$update_sql_statement) or die(mysqli_error($con));

	if(mysqli_affected_rows($con)<>1)
	{
	
		$data_insertion_hampering = "Yes";
	
	}
}

if($data_previously_saved == "Yes")
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is previously updated.";

}
else if($data_insertion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "Data is successfully updated.";

}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is not successfully updated.";

}

$obj->disconnection();

?>
