<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();




$data_previously_saved = "No";
$data_deleteion_hampering = "No";


$id=$_POST['dept_id'];


mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));



	$delete_sql_statement="DELETE FROM `department_info` WHERE `dept_id`='$id'";

	mysqli_query($con,$delete_sql_statement) or die(mysqli_error($con));

	if(mysqli_affected_rows($con)<>1)
	{
	
		$data_deleteion_hampering = "Yes";
	
	}

if($data_deleteion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "Data is successfully Deleted.";


}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is not successfully Deleted.";

}

$obj->disconnection();

?>
