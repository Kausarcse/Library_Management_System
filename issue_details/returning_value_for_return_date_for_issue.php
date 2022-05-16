<?php
error_reporting(0);
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


$user_id = $_SESSION['user_id'];
$password = $_SESSION['password'];
$user_name = $_SESSION['user_name'];

$book_name= mysqli_real_escape_string($con,$_POST['book_name']);
$book_id= $_POST['book_id'];
$author_id= $_POST['author_id'];
$author_name= mysqli_real_escape_string($con,$_POST['author_name']);

$isbn_number= mysqli_real_escape_string($con,$_POST['isbn_number']);
$available_qty= (int)$_POST['available_qty'];
$required_qty= (int)$_POST['required_qty'];

$available_quantity = $available_qty - $required_qty;

$current_date = date('Y-m-d');
$date=date_create($current_date);
date_add($date,date_interval_create_from_date_string("10 days"));

$book_return_date = date_format($date,"Y-m-d");



mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));


 $select_sql_for_duplicacy="SELECT * from `issue_info` 
                            where 
                            `book_id` = '$book_id' and
                            `book_name` = '$book_name' and
                            `isbn_number` = '$isbn_number' and
                            `author_id` = '$author_id' and
                            `author_name` = '$author_name' and
                            `issue_quantity` = '$required_qty' and
                            `status` = '1' ORDER BY book_return_date ASC LIMIT 1";


$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));

$row = mysqli_fetch_array($result);

$book_return_date = date_format(date_create($row['book_return_date']),"d-M-Y");

echo "This Book is not available right now. \nBut it will be available after ".$book_return_date."\n Thanks.";

?>