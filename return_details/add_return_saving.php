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


$user_id_return= $_POST['user_id'];
$book_name= mysqli_real_escape_string($con,$_POST['book_name']);
$book_id= $_POST['book_id'];
$author_id= $_POST['author_id'];
$author_name= mysqli_real_escape_string($con,$_POST['author_name']);

$isbn_number= mysqli_real_escape_string($con,$_POST['isbn_number']);

$issue_id= $_POST['issue_id'];
$available_qty= (int)$_POST['available_quantity'];
$available_quantity = $available_qty + 1;




mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));


 $select_sql_for_duplicacy="SELECT * from `return_info` 
                            where 
                            `user_id` = '$user_id_return' and
                            `book_id` = '$book_id' and
                            `book_name` = '$book_name' and
                            `isbn_number` = '$isbn_number' and
                            `author_id` = '$author_id' and
                            `author_name` = '$author_name' and
                            `issue_id` = '$issue_id'";

$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));


if(mysqli_num_rows($result)>0)
{
    
	$data_previously_saved="Yes";

} 

else if( mysqli_num_rows($result) < 1)
{
	$insert_sql_statement="INSERT INTO `return_info` ( 
                                        `user_id`,
                                        `issue_id`,
                                        `book_id`,
                                        `book_name`,
                                        `isbn_number`,
                                        `author_id`,
                                        `author_name`,
                                        `recording_persion_id`,
                                        `recording_persion_name`,
                                        `recording_time` ) 
                                values (
                                        '$user_id',
                                        '$issue_id',
                                        '$book_id',
                                        '$book_name',
                                        '$isbn_number',
                                        '$author_id',
                                        '$author_name',
                                        '$user_id',
                                        '$user_name',
                                        NOW())";

	mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));

	if(mysqli_affected_rows($con)<>1)
	{
	
		$data_insertion_hampering = "Yes";
	
	}
        else
        {
                $update_sql_statement="UPDATE `book_list` SET 
                                    `available_quantity` = '$available_quantity'
                                 WHERE 
                                        `book_id` = '$book_id' and
                                        `book_name` = '$book_name' and
                                        `isbn_number` = '$isbn_number' and
                                        `author_id` = '$author_id' and
                                        `author_name` = '$author_name' ";

	mysqli_query($con,$update_sql_statement) or die(mysqli_error($con));

        $update_sql_statement="UPDATE `issue_info` SET 
                                `status` = '0'
                                WHERE 
                                `user_id` = '$user_id' and
                                `book_id` = '$book_id' and
                                `book_name` = '$book_name' and
                                `isbn_number` = '$isbn_number' and
                                `author_id` = '$author_id' and
                                `author_name` = '$author_name' ";

        mysqli_query($con,$update_sql_statement) or die(mysqli_error($con));

        }
}

if($data_previously_saved == "Yes")
{

	mysqli_query($con,"ROLLBACK");
	echo "This book is previously returned.";

}
else if($data_insertion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "This book is successfully returned.";

}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "This book is not successfully returned.";

}

$obj->disconnection();

?>
