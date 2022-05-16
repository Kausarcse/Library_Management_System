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

$sub_query = '';


if(isset($_POST['from_date']) && $_POST['from_date']!='' && $_POST['to_date']=='')
{   
  $from_date = date_format(date_create($_POST['from_date']),"Y-m-d");
  
  $sub_query.=" and  DATE(ii.recording_time) ='".$from_date."'";

}
 if(isset($_POST['to_date']) && isset($_POST['from_date']) && $_POST['to_date']!='')
{   
	
  $from_date = date_format(date_create($_POST['from_date']),"Y-m-d");
  $to_date = date_format(date_create($_POST['to_date']),"Y-m-d");

  $sub_query.=" and  DATE(ii.recording_time) BETWEEN '".$from_date."' AND '".$to_date."'";
}

if(isset($_POST['book_name'])  && $_POST['book_name']!='select')
{   
  
  $book_name=$_POST['book_name'];

    $sub_query.=" and  ii.book_name ='".$book_name."'";

}

if(isset($_POST['user_id'])  && $_POST['user_id']!='select')
{   
  
  $user_id=$_POST['user_id'];

    $sub_query.=" and  ii.user_id ='".$user_id."'";

}

if(isset($_POST['author_name'])  && $_POST['author_name']!='select')
{   
  
  $author_name=$_POST['author_name'];

    $sub_query.=" and  ii.author_name ='".$author_name."'";

}



  // echo $sql_for_book = "SELECT DISTINCT ui.user_name, ui.department_name, ui.designation_name, bl.book_name, bl.isbn_number, bl.author_name, DATE(ii.recording_time) issue_date, ii.book_return_date, DATE(ri.recording_time) confirm_return_date, bl.available_quantity 
  //                     FROM book_list bl 
  //                     INNER JOIN issue_info ii ON bl.book_id = ii.book_id AND bl.book_name = ii.book_name AND bl.isbn_number = ii.isbn_number AND bl.author_id = ii.author_id
  //                     LEFT JOIN return_info ri ON ii.book_id = ri.book_id AND ii.book_name = ri.book_name AND ii.isbn_number = ri.isbn_number AND ii.author_id = ri.author_id
  //                     INNER JOIN user_info ui ON ui.user_id = ii.user_id
  //                     WHERE 1=1 $sub_query
  //                     ORDER BY DATE(ii.recording_time) asc";

  
  $sql_for_book = "SELECT DISTINCT ui.user_id, ui.user_name, ui.department_name, ui.designation_name, bl.book_id, bl.book_name, bl.isbn_number, bl.author_name, 
                      ii.issue_id, DATE(ii.recording_time) issue_date, ii.book_return_date, bl.available_quantity 
                      FROM book_list bl 
                      INNER JOIN issue_info ii ON bl.book_id = ii.book_id AND bl.book_name = ii.book_name AND bl.isbn_number = ii.isbn_number AND bl.author_id = ii.author_id
                      LEFT JOIN return_info ri ON ii.book_id = ri.book_id AND ii.book_name = ri.book_name AND ii.isbn_number = ri.isbn_number AND ii.author_id = ri.author_id
                      INNER JOIN user_info ui ON ui.user_id = ii.user_id
                      WHERE 1=1 $sub_query
                      ORDER BY DATE(ii.recording_time) asc";

 $data_table = '';
$serial =0;

$data_table .= '<table id="data_table_for_book" class="table table-striped table-bordered" >
                  <thead>
                      <tr style="border: 1px solid black">
                          <th style="border: 1px solid black">#</th>
                          <th style="border: 1px solid black">Transaction ID</th>
                          <th style="border: 1px solid black">Employee Name</th>
                          <th style="border: 1px solid black">Department</th>
                          <th style="border: 1px solid black">Designation</th>
                          <th style="border: 1px solid black">Book Name</th>
                          <th style="border: 1px solid black">Author Name</th>
                          <th style="border: 1px solid black">Book Issue Date</th>
                          <th style="border: 1px solid black">Book Return Date</th>
                          <th style="border: 1px solid black">Available Book</th>
                      </tr>
                  </thead>
                  <tbody>';

                $res_for_book = mysqli_query($con, $sql_for_book);

     while($row_for_book = mysqli_fetch_assoc($res_for_book))
     {
         $user_id = $row_for_book['user_id'];
         $user_name = $row_for_book['user_name'];
         $department_name = $row_for_book['department_name'];
         $designation_name = $row_for_book['designation_name'];
         $book_id = $row_for_book['book_id'];
         $issue_id = $row_for_book['issue_id'];

         $book_name = $row_for_book['book_name'];
         $isbn_number = $row_for_book['isbn_number'];
         $author_name = $row_for_book['author_name'];
         $issue_date = date_format(date_create($row_for_book['issue_date']),"d-M-Y");
         $book_return_datess = $row_for_book['book_return_date'];
         $book_return_date = date_format(date_create($book_return_datess),"d-M-Y");
         
         $sql_for_ret_date = "SELECT DATE(recording_time) confirm_return_date FROM return_info WHERE `user_id` = '$user_id' AND issue_id = '$issue_id' AND book_id = '$book_id'";
         $res_for_ret_date = mysqli_query($con, $sql_for_ret_date);
         $row_for_ret_date = mysqli_fetch_assoc($res_for_ret_date);

         $return_date = $row_for_ret_date['confirm_return_date'];
         
        if($return_date != '')
        {
          $confirm_return_date = date_format(date_create($return_date),"d-M-Y");
        }
        else
        {
          $confirm_return_date = '';
        }

        
        
         $available_quantity = $row_for_book['available_quantity'];

         $serial++;
         $data_table .= '<tr style="border: 1px solid black">
                     <td style="border: 1px solid black">'.$serial.'</td>
                     <td style="border: 1px solid black"> Tnx_'.$issue_id.'</td>
                     <td style="border: 1px solid black">'.$user_name.'</td>
                     <td style="border: 1px solid black">'.$department_name.'</td>
                     <td style="border: 1px solid black">'.$designation_name.'</td>
                     <td style="border: 1px solid black">'.$book_name.'</td>
                     <td style="border: 1px solid black">'.$author_name.'</td>
                     <td style="border: 1px solid black">'.$issue_date.'</td>';

                     if($return_date > $book_return_datess)
                     {
                        $data_table .= '<td style="border: 1px solid black; color:red">'.$confirm_return_date.'</td>';
                      }
                      else
                      {
                        $data_table .= '<td style="border: 1px solid black">'.$confirm_return_date.'</td>';

                      }
                     
                     $data_table .='<td style="border: 1px solid black">'.$available_quantity.'</td>
                 </tr>';
     }

    
 $data_table .='</tbody>
</table>';

echo $data_table;
?>