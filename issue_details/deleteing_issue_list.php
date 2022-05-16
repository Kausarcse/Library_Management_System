<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



$data_previously_saved = "No";
$data_deleteion_hampering = "No";


$issue_id=$_POST['issue_id'];



mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));

    $sql_for_book = "SELECT bl.book_id, bl.book_name, bl.author_id, bl.author_name, bl.isbn_number, bl.available_quantity 
                    FROM issue_info ii
                    INNER JOIN book_list bl ON bl.book_id = ii.book_id AND bl.book_name = ii.book_name and 
                                bl.isbn_number = ii.isbn_number AND bl.author_id = ii.author_id
                    WHERE ii.issue_id = '$issue_id'";

    $res_for_book = mysqli_query($con, $sql_for_book) or die(mysqli_error($con));
    $row_for_book = mysqli_fetch_assoc($res_for_book);

    $book_id = $row_for_book['book_id'];
    $isbn_number = $row_for_book['isbn_number'];
    $book_name = $row_for_book['book_name'];
    $author_id = $row_for_book['author_id'];
    $author_name = $row_for_book['author_name'];

    $available_quantity = $row_for_book['available_quantity'];

    $available_qty = $available_quantity + 1;

	$delete_sql_statement="DELETE FROM `issue_info` WHERE `issue_id`='$issue_id'";

	mysqli_query($con,$delete_sql_statement) or die(mysqli_error($con));

	if(mysqli_affected_rows($con)<>1)
	{
	
		$data_deleteion_hampering = "Yes";
	
	}
    else
    {
        $update_sql_statement="UPDATE `book_list` SET 
                                    `available_quantity` = '$available_qty'
                                WHERE 
                                    `book_id` = '$book_id' and
                                    `book_name` = '$book_name' and
                                    `isbn_number` = '$isbn_number' and
                                    `author_id` = '$author_id' and
                                    `author_name` = '$author_name' ";

        mysqli_query($con,$update_sql_statement) or die(mysqli_error($con));
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
