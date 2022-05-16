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


$author_name= $_POST['author_name'];


mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));


$select_sql_for_duplicacy="select * from `author` where `author_name`='$author_name'";


$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));


if(mysqli_num_rows($result)>0)
{
    
	$data_previously_saved="Yes";

} 

else if( mysqli_num_rows($result) < 1)
{

	$select_sql_max_primary_key="SELECT MAX(max_author_id) as max_author_id 
	FROM (select CONVERT(substring(author_id,6,LENGTH(author_id)),UNSIGNED) as max_author_id from author) as temp_author_table"; //converted into string and find max

    $result_for_max_primary_key = mysqli_query($con,$select_sql_max_primary_key) or die(mysqli_error($con));
    
    $row_for_max_primary_key = mysqli_fetch_array($result_for_max_primary_key);

    $row_id=$row_for_max_primary_key['max_author_id'] + 1;

    if($row_for_max_primary_key['max_author_id']==0)
    {

    	$current_author_id='auth_1';

    }
    else
    {

    	$current_author_id ="auth_".($row_for_max_primary_key['max_author_id']+1);

    }

	$insert_sql_statement="insert into `author` ( `author_id`,`author_name`,`recording_person_id`,`recording_person_name`,`recording_time` ) 
                                                values ('$current_author_id','$author_name','$user_id','$user_name',NOW())";

	mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));

	if(mysqli_affected_rows($con)<>1)
	{
	
		$data_insertion_hampering = "Yes";
	
	}
}

if($data_previously_saved == "Yes")
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is previously saved.";

}
else if($data_insertion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "Data is successfully saved.";

}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is not successfully saved.";

}

$obj->disconnection();

?>
