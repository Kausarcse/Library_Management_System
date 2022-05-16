<?php
error_reporting(0);
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

$user_name = $_SESSION['user_name'];
$user_id = $_SESSION['user_id'];
$user_type = $_SESSION['user_type'];

$date = new DateTime('now', new DateTimeZone('Asia/Dhaka'));

$data_table = '';
$serial =0;

$overall_report = $_POST['overall_report'];

if($overall_report == 'book_list')
{
    $sql_for_book = "SELECT * FROM book_list ORDER BY id DESC";

    $data_table .= '<table id="data_table_for_book" class="table table-striped table-bordered" >
    <thead>
        <tr style="border: 1px solid black">
            <th style="border: 1px solid black">#</th>
            <th style="border: 1px solid black">Book Name</th>
            <th style="border: 1px solid black">ISBN Number</th>
            <th style="border: 1px solid black">Category Name</th>
            <th style="border: 1px solid black">Author Name</th>
            <th style="border: 1px solid black">Location</th>
            <th style="border: 1px solid black">Book Quantity</th>
            <th style="border: 1px solid black">Available Quantity</th>
        </tr>
    </thead>
    <tbody>';

    $res_for_book = mysqli_query($con, $sql_for_book);

    while($row_for_book = mysqli_fetch_assoc($res_for_book))
    {
        $book_name = $row_for_book['book_name'];
        $isbn_number = $row_for_book['isbn_number'];
        $category_name = $row_for_book['category_name'];
        $author_name = $row_for_book['author_name'];
        $location_name = $row_for_book['location_name'];
        $book_quantity = $row_for_book['quantity'];
        $available_quantity = $row_for_book['available_quantity'];

        $serial++;
        $data_table .= '<tr style="border: 1px solid black">
        <td style="border: 1px solid black">'.$serial.'</td>
        <td style="border: 1px solid black">'.$book_name.'</td>
        <td style="border: 1px solid black">'.$isbn_number.'</td>
        <td style="border: 1px solid black">'.$category_name.'</td>
        <td style="border: 1px solid black">'.$author_name.'</td>
        <td style="border: 1px solid black">'.$location_name.'</td>
        <td style="border: 1px solid black">'.$book_quantity.'</td>
        <td style="border: 1px solid black">'.$available_quantity.'</td>
        </tr>';
    }

    $data_table .='</tbody> </table>';
}
else if($overall_report == 'issue_info')
{
    $sql_for_book = "SELECT ii.issue_id, ui.user_name, ui.department_name, ui.designation_name, ii.book_name, ii.isbn_number, ii.author_name, 
                    DATE(ii.recording_time) issue_date, ii.book_return_date FROM issue_info ii
                    INNER JOIN user_info ui ON ii.user_id = ui.user_id
                    ORDER BY ii.issue_id DESC";

    $data_table .= '<table id="data_table_for_book" class="table table-striped table-bordered" >
    <thead>
        <tr style="border: 1px solid black">
            <th style="border: 1px solid black">#</th>
            <th style="border: 1px solid black">Transaction Number</th>
            <th style="border: 1px solid black">Employee Name</th>
            <th style="border: 1px solid black">Department</th>
            <th style="border: 1px solid black">Designation</th>
            <th style="border: 1px solid black">Book Name</th>
            <th style="border: 1px solid black">ISBN Number</th>
            <th style="border: 1px solid black">Author Name</th>
            <th style="border: 1px solid black">Book Issue Date</th>
            <th style="border: 1px solid black">Book Return Last Date</th>
        </tr>
    </thead>
    <tbody>';

    $res_for_book = mysqli_query($con, $sql_for_book);

    while($row_for_book = mysqli_fetch_assoc($res_for_book))
    {
        $issue_id = $row_for_book['issue_id'];
        $user_name = $row_for_book['user_name'];
        $department_name = $row_for_book['department_name'];
        $designation_name = $row_for_book['designation_name'];
        $book_name = $row_for_book['book_name'];
        $isbn_number = $row_for_book['isbn_number'];
        $author_name = $row_for_book['author_name'];
        $issue_date = date_format(date_create($row_for_book['issue_date']),"d-M-Y");
        $book_return_date = date_format(date_create($row_for_book['book_return_date']),"d-M-Y");

        $return_dates = $row_for_book['book_return_date'];
        $current_date = date('Y-m-d');

        // $sql_for_ret_date = "SELECT DATE(recording_time) confirm_return_date FROM return_info WHERE `user_id` = '$user_id' AND issue_id = '$issue_id' AND book_id = '$book_id'";
        // $res_for_ret_date = mysqli_query($con, $sql_for_ret_date);
        // $row_for_ret_date = mysqli_fetch_assoc($res_for_ret_date);

        // $return_date = $row_for_ret_date['confirm_return_date'];

        $serial++;
        $data_table .= '<tr style="border: 1px solid black">
        <td style="border: 1px solid black">'.$serial.'</td>
        <td style="border: 1px solid black"> Tnx_'.$issue_id.'</td>
        <td style="border: 1px solid black">'.$user_name.'</td>
        <td style="border: 1px solid black">'.$department_name.'</td>
        <td style="border: 1px solid black">'.$designation_name.'</td>
        <td style="border: 1px solid black">'.$book_name.'</td>
        <td style="border: 1px solid black">'.$isbn_number.'</td>
        <td style="border: 1px solid black">'.$author_name.'</td>
        <td style="border: 1px solid black">'.$issue_date.'</td>';
        if($return_dates < $current_date)
        {
            $data_table .= '<td style="border: 1px solid black;color:red">'.$book_return_date.'</td>';
        }
        else
        {
            $data_table .= '<td style="border: 1px solid black;color:black">'.$book_return_date.'</td>';

        }
        // $data_table .= '<td style="border: 1px solid black">'.$book_return_date.'</td>
        $data_table .= '</tr>';
    }

    $data_table .='</tbody> </table>';
}
else if($overall_report == 'return_info')
{
    $sql_for_book = "SELECT ri.issue_id, ui.user_name, ui.department_name, ui.designation_name, ri.book_id, ri.book_name, ri.isbn_number, ri.author_name, 
                    DATE(ri.recording_time) confirm_return_date FROM return_info ri
                    INNER JOIN user_info ui ON ri.user_id = ui.user_id
                    ORDER BY ri.return_id DESC";

    $data_table .= '<table id="data_table_for_book" class="table table-striped table-bordered" >
    <thead>
        <tr style="border: 1px solid black">
            <th style="border: 1px solid black">#</th>
            <th style="border: 1px solid black">Transaction Number</th>
            <th style="border: 1px solid black">Employee Name</th>
            <th style="border: 1px solid black">Department</th>
            <th style="border: 1px solid black">Designation</th>
            <th style="border: 1px solid black">Book Name</th>
            <th style="border: 1px solid black">ISBN Number</th>
            <th style="border: 1px solid black">Author Name</th>
            <th style="border: 1px solid black">Book Return Date</th>
        </tr>
    </thead>
    <tbody>';

    $res_for_book = mysqli_query($con, $sql_for_book);

    while($row_for_book = mysqli_fetch_assoc($res_for_book))
    {
        $issue_id = $row_for_book['issue_id'];
        $book_id = $row_for_book['book_id'];
        $user_name = $row_for_book['user_name'];
        $department_name = $row_for_book['department_name'];
        $designation_name = $row_for_book['designation_name'];
        $book_name = $row_for_book['book_name'];
        $isbn_number = $row_for_book['isbn_number'];
        $author_name = $row_for_book['author_name'];
        $return_date = date_format(date_create($row_for_book['confirm_return_date']),"d-M-Y");

        $sql_for_ret_date = "SELECT DATE(book_return_date) return_date FROM issue_info WHERE issue_id = '$issue_id' AND book_id = '$book_id'";
        $res_for_ret_date = mysqli_query($con, $sql_for_ret_date);
        $row_for_ret_date = mysqli_fetch_assoc($res_for_ret_date);

        $return_date_from_issue = $row_for_ret_date['return_date'];
        
        $confirm_return_date = $row_for_book['confirm_return_date'];

        $serial++;
        $data_table .= '<tr style="border: 1px solid black">
        <td style="border: 1px solid black">'.$serial.'</td>
        <td style="border: 1px solid black"> Tnx_'.$issue_id.'</td>
        <td style="border: 1px solid black">'.$user_name.'</td>
        <td style="border: 1px solid black">'.$department_name.'</td>
        <td style="border: 1px solid black">'.$designation_name.'</td>
        <td style="border: 1px solid black">'.$book_name.'</td>
        <td style="border: 1px solid black">'.$isbn_number.'</td>
        <td style="border: 1px solid black">'.$author_name.'</td>';

        if($confirm_return_date > $return_date_from_issue)
        {
            $data_table .= '<td style="border: 1px solid black;color:red">'.$return_date.'</td>';
        }
        else
        {
            $data_table .= '<td style="border: 1px solid black;color:black">'.$return_date.'</td>';

        }
        // $data_table .= '<td style="border: 1px solid black">'.$return_date.'</td>';
        $data_table .= '</tr>';
    }

    $data_table .='</tbody> </table>';

}
echo $data_table;
?>