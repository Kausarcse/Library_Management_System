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

$user_id_issue= $_POST['user_id'];
$book_name= mysqli_real_escape_string($con,$_POST['book_name']);
$book_id= $_POST['book_id'];
$author_id= $_POST['author_id'];
$author_name= mysqli_real_escape_string($con,$_POST['author_name']);

$isbn_number= mysqli_real_escape_string($con,$_POST['isbn_number']);
$available_qty= (int)$_POST['available_qty'];
$required_qty= (int)$_POST['required_qty'];

if($available_qty > 0)
{
        $available_quantity = $available_qty - $required_qty;

        $current_date = date('Y-m-d');
        $date=date_create($current_date);
        date_add($date,date_interval_create_from_date_string("10 days"));
        
        $book_return_date = date_format($date,"Y-m-d");
        
        
        
        mysqli_query($con,"BEGIN");
        mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));
        
        
         $select_sql_for_duplicacy="SELECT * from `issue_info` 
                                    where 
                                    `user_id` = '$user_id_issue' and
                                    `book_id` = '$book_id' and
                                    `book_name` = '$book_name' and
                                    `isbn_number` = '$isbn_number' and
                                    `author_id` = '$author_id' and
                                    `author_name` = '$author_name' and
                                    `issue_quantity` = '$required_qty' and
                                    `status` = '1'";
        
        
        $result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));
        
        
        if(mysqli_num_rows($result)>0)
        {
            
                $data_previously_saved="Yes";
        
        } 
        
        else if( mysqli_num_rows($result) < 1)
        {
                $insert_sql_statement="INSERT INTO `issue_info` ( 
                                                `user_id`,
                                                `book_id`,
                                                `book_name`,
                                                `isbn_number`,
                                                `author_id`,
                                                `author_name`,
                                                `issue_quantity`,
                                                `book_return_date`,
                                                `status`,
                                                `recording_person_id`,
                                                `recording_person_name`,
                                                `recording_time` ) 
                                        values (
                                                '$user_id_issue',
                                                '$book_id',
                                                '$book_name',
                                                '$isbn_number',
                                                '$author_id',
                                                '$author_name',
                                                '$required_qty',
                                                '$book_return_date',
                                                '1',
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
                }
        }
        
        if($data_previously_saved == "Yes")
        {
        
                mysqli_query($con,"ROLLBACK");
                echo "This book is previously issued.";
        
        }
        else if($data_insertion_hampering == "No" )
        {
        
                mysqli_query($con,"COMMIT");
                echo "This book is successfully issued.";
        
        }
        else
        {
        
                mysqli_query($con,"ROLLBACK");
                echo "This book is not successfully issued.";
        
        }
}
else
{
        mysqli_query($con,"BEGIN");
        mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));

        $select_sql_for_duplicacy="SELECT * from `issue_info` 
                                    where 
                                    `user_id` = '$user_id_issue' and
                                    `book_id` = '$book_id' and
                                    `book_name` = '$book_name' and
                                    `isbn_number` = '$isbn_number' and
                                    `author_id` = '$author_id' and
                                    `author_name` = '$author_name' and
                                    `issue_quantity` = '$required_qty' and
                                    `status` = '1'";
        
        
        $result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));
        
        
        if(mysqli_num_rows($result)>0)
        {
            
                $data_previously_saved="Yes";
        
        } 
        
        else if( mysqli_num_rows($result) < 1)
        {
                $select_sql_return_date="SELECT * from `issue_info` 
                                where 
                                `book_id` = '$book_id' and
                                `book_name` = '$book_name' and
                                `isbn_number` = '$isbn_number' and
                                `author_id` = '$author_id' and
                                `author_name` = '$author_name' and
                                `issue_quantity` = '$required_qty' and
                                `status` = '1' ORDER BY book_return_date ASC LIMIT 1";


                $result_for_return_date = mysqli_query($con, $select_sql_return_date) or die(mysqli_error($con));

                $row = mysqli_fetch_array($result_for_return_date);

                $book_return_date = date_format(date_create($row['book_return_date']),"d-M-Y");

                if(mysqli_affected_rows($con)<>1)
                {
                
                        $data_insertion_hampering = "Yes";
                
                }
        }

        if($data_previously_saved == "Yes")
        {
        
                mysqli_query($con,"ROLLBACK");
                echo "This book is previously issued.";
        
        }
        else if($data_insertion_hampering == "No" )
        {
        
                mysqli_query($con,"COMMIT");
                echo "This Book is not available right now. \nBut it will be available after ".$book_return_date."\n Thanks.";
        
        }
           
}


$obj->disconnection();

?>
