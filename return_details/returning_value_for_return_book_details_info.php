<?php
session_start();
error_reporting(0);
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

$user_name = $_SESSION['user_name'];
$user_id = $_SESSION['user_id'];
$user_type = $_SESSION['user_type'];


$data = '';
$serial = 0;
$book_name = mysqli_real_escape_string($con,$_POST['book_name']); 



$available_quantity = 0;
$issue_quantity = 0;

// <html>
//     <body>
       $data = '<table id="data_table_for_book" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Author</th>
                        <th>Book Name</th>
                        <th>ISBN Number</th>
                        <th>Category</th>
                        <th>Location</th>
                        <th>Return Book Qty.</th>
                        <th>Checked</th>
                    </tr>
                </thead>
                <tbody>';

                    $sql_for_book = "SELECT * FROM issue_info ii
                                    INNER JOIN book_list bl ON bl.isbn_number = ii.isbn_number and bl.book_name = ii.book_name and
                                                bl.book_id = ii.book_id and bl.author_id = ii.author_id and bl.author_name = ii.author_name
                                    WHERE ii.user_id = '$user_id' AND ii.book_name ='$book_name' AND 
                                    ii.status = '1'";
                    $res_for_book = mysqli_query($con, $sql_for_book);

                    while($row_for_book = mysqli_fetch_assoc($res_for_book))
                    {
                        $issue_id = $row_for_book['issue_id'];
                        $author_id = $row_for_book['author_id'];
                        $author_name = $row_for_book['author_name'];
                        $book_id = $row_for_book['book_id'];
                        $book_name = $row_for_book['book_name'];
                        $isbn_number = $row_for_book['isbn_number'];
                        $category_name = $row_for_book['category_name'];
                        $location_name = $row_for_book['location_name'];
                        $issue_quantity = $row_for_book['issue_quantity'];
                        $available_quantity = $row_for_book['available_quantity'];

                        $serial++;
                        $details = $serial.'?fs?'.$isbn_number.'?fs?'.$issue_id.'?fs?'.$book_id.'?fs?'.$author_id.'?fs?'.$author_name.'?fs?'.$available_quantity;
                        $data .= '<tr id="table_row_'.$serial.'">
                                    <td>'.$serial.'</td>
                                    <td>'.$author_name.'</td>
                                    <td>'.$book_name.'</td>
                                    <td>'.$isbn_number.'</td>
                                    <td>'.$category_name.'</td>
                                    <td>'.$location_name.'</td>
                                    <td>'.$issue_quantity.'</td>
                                    <td><input type="radio" id="check_box_'.$serial.'" name="check_box_data" value="'.$details.'" onchange="returning_value_for_required_qty(this.value)" ></td>
                                </tr>';
                    }
            
                   
                $data .='</tbody>
        </table>';
//     </body>
// </html>
echo $data;
?>


<script>

   
	              $(document).ready(function() {
					    $('#data_table_for_book').DataTable( {
					        initComplete: function () {
					            this.api().columns().every( function () {
					                var column = this;
					                var select = $('<select><option value=""></option></select>')
					                    .appendTo( $(column.footer()).empty() )
					                    .on( 'change', function () {
					                        var val = $.fn.dataTable.util.escapeRegex(
					                            $(this).val()
					                        );
					 
					                        column
					                            .search( val ? '^'+val+'$' : '', true, false )
					                            .draw();
					                    } );
					 
					                column.data().unique().sort().each( function ( d, j ) {
					                    select.append( '<option value="'+d+'">'+d+'</option>' )
					                } );
					            } );
					        }
					     } );
					  } );
		   </script>