<?php
session_start();
error_reporting(0);
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


$data_previously_saved = "No";
$data_insertion_hampering = "No";


$user_id = $_SESSION['user_id'];
$password = $_SESSION['password'];
$user_name = $_SESSION['user_name'];

$book_id= $_POST['book_id'];

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

mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));


$select_sql_for_duplicacy="SELECT * from `book_list` 
                            where 
                            `book_id`='$book_id' and
                            `book_name`='$book_name' and
                            `author_id`='$author_id' and
                            `cat_id`='$category_id' and
                            `isbn_number`='$isbn_number' and
                            `loc_id`='$location_id' and
                            `quantity`='$book_quantity' ";


$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));


if(mysqli_num_rows($result)>0)
{
    
	$data_previously_saved="Yes";

} 

else if( mysqli_num_rows($result) < 1)
{

   $sql_for_issue_qty = "SELECT * FROM issue_info WHERE book_id = '$book_id' AND `status` = '1'";
   $result_for_issue_qty = mysqli_query($con,$sql_for_issue_qty) or die(mysqli_error($con));

   $issue_quantity = mysqli_num_rows($result_for_issue_qty);
   $available_qty = $book_quantity - $issue_quantity ;

   
   $update_sql_statement="UPDATE `book_list` SET 
                                    `book_name` = '$book_name', 
                                    `isbn_number`='$isbn_number',
                                    `author_id`='$author_id',
                                    `author_name`='$author_name',
                                    `cat_id`='$category_id',
                                    `category_name`='$category_name',
                                    `loc_id`='$location_id',
                                    `location_name`='$location_name',
                                    `quantity` = '$book_quantity',
                                    `available_quantity` = '$available_qty'
                                 WHERE 
                                    `book_id` = '$book_id'";

	mysqli_query($con,$update_sql_statement) or die(mysqli_error($con));

	if(mysqli_affected_rows($con)<>1)
	{
	
		$data_insertion_hampering = "Yes";
	
	}
}

if($data_previously_saved == "Yes")
{

	mysqli_query($con,"ROLLBACK");
	echo "The book is previously updated.";

}
else if($data_insertion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "The book is successfully updated.";

}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "The book is not successfully updated.";

}

$obj->disconnection();

?>
