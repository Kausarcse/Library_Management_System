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


$book_name= mysqli_real_escape_string($con,$_POST['book_name']);

$isbn_number = mysqli_real_escape_string($con,$_POST['isbn_number']);

$author_details= $_POST['author_name'];
$splitted_author = explode('?fs?',$author_details);
$author_id =$splitted_author[0];
$author_name = mysqli_real_escape_string($con,$splitted_author[1]);

$category_details= $_POST['category_name'];
$splitted_category = explode('?fs?',$category_details);
$category_id = $splitted_category[0];
$category_name = mysqli_real_escape_string($con,$splitted_category[1]);

$location_details= $_POST['location_name'];
$splitted_location = explode('?fs?',$location_details);
$location_id = $splitted_location[0];
$location_name = mysqli_real_escape_string($con,$splitted_location[1]);

$book_quantity = $_POST['book_quantity'];

$available_qty = $_POST['book_quantity'];


mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));


$select_sql_for_duplicacy="SELECT * from `book_list` 
                            where 
                            `book_name`='$book_name' and
                            `author_id`='$author_id' and
                            `cat_id`='$category_id' and
                            `loc_id`='$location_id' and
                            `isbn_number`='$isbn_number'";


$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));


if(mysqli_num_rows($result)>0)
{
    
	$data_previously_saved="Yes";

} 

else if( mysqli_num_rows($result) < 1)
{

   $select_sql_max_primary_key="SELECT MAX(max_book_id) as max_book_id 
	FROM (select CONVERT(substring(book_id,6,LENGTH(book_id)),UNSIGNED) as max_book_id from book_list) as temp_book_table"; //converted into string and find max

    $result_for_max_primary_key = mysqli_query($con,$select_sql_max_primary_key) or die(mysqli_error($con));
    
    $row_for_max_primary_key = mysqli_fetch_array($result_for_max_primary_key);

    $row_id=$row_for_max_primary_key['max_book_id'] + 1;

    if($row_for_max_primary_key['max_book_id']==0)
    {

    	$current_book_id='book_1';

    }
    else
    {

    	$current_book_id ="book_".($row_for_max_primary_key['max_book_id']+1);

    }

	$insert_sql_statement="INSERT into `book_list` (
                                `book_id`, 
                                `book_name`,
                                `isbn_number`,
                                `author_id`,
                                `author_name`,
                                `cat_id`,
                                `category_name`,
                                `loc_id`,
                                `location_name`,
                                `quantity`,
                                `available_quantity`,
                                `recording_person_id`,
                                `recording_person_name`,
                                `recording_time` ) 
                            values (
                                '$current_book_id',
                                '$book_name',
                                '$isbn_number',
                                '$author_id',
                                '$author_name',
                                '$category_id',
                                '$category_name',
                                '$location_id',
                                '$location_name',
                                '$book_quantity',
                                '$available_qty',
                                '$user_id',
                                '$user_name',
                                NOW())";

	mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));

	if(mysqli_affected_rows($con)<>1)
	{
	
		$data_insertion_hampering = "Yes";
	
	}
}

if($data_previously_saved == "Yes")
{

	mysqli_query($con,"ROLLBACK");
	echo "The book is previously saved.";

}
else if($data_insertion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "The book is successfully saved.";

}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "The book is not successfully saved.";

}

$obj->disconnection();

?>
