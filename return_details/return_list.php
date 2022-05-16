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


$table_data = '';
if(isset($_POST['return_id']))
{
	$return_id = $_POST['return_id'];
	$sql_for_return = "SELECT DISTINCT ri.issue_id, bl.book_id,bl.book_name, bl.isbn_number, bl.cat_id, bl.category_name, 
                                bl.author_id, bl.author_name, bl.loc_id, bl.location_name, bl.available_quantity, 
                                ri.return_id, ri.user_id, ri.recording_time
                                FROM book_list bl INNER JOIN return_info ri ON bl.isbn_number = ri.isbn_number and bl.book_name = ri.book_name
								WHERE ri.user_id = '$user_id'
								ORDER BY ri.return_id DESC";
}
else if ($user_type == 'User')
{
	
	$table_data .= '<div>
	<h4 style="font-size: 30px; text-align:center"><strong>Return Book List</strong></h4>
	</div>';
	$sql_for_return = "SELECT DISTINCT ri.issue_id, bl.book_id,bl.book_name, bl.isbn_number, bl.cat_id, bl.category_name, 
                        bl.author_id, bl.author_name, bl.loc_id, bl.location_name, bl.available_quantity, 
                        ri.return_id, ri.user_id, ri.recording_time
                        FROM book_list bl 
						INNER JOIN return_info ri ON bl.isbn_number = ri.isbn_number and bl.book_name = ri.book_name 
						WHERE ri.user_id = '$user_id'
						ORDER BY ri.return_id DESC";
}
else
{
	
	$table_data .= '<div>
	<h4 style="font-size: 30px; text-align:center"><strong>Return Book List</strong></h4>
	</div>';
	$sql_for_return = "SELECT DISTINCT ri.issue_id, bl.book_id,bl.book_name, bl.isbn_number, bl.cat_id, bl.category_name, 
                        bl.author_id, bl.author_name, bl.loc_id, bl.location_name, bl.available_quantity, 
                        ri.return_id, ri.user_id, ri.recording_time
                        FROM book_list bl 
						INNER JOIN return_info ri ON bl.isbn_number = ri.isbn_number and bl.book_name = ri.book_name 
						ORDER BY ri.return_id DESC";
}
// exit();

	$res_for_return = mysqli_query($con, $sql_for_return);

        if(mysqli_num_rows($res_for_return)>0)
        {
			$table_data .= '<table id="datatable-buttons" class="table table-striped table-bordered">
								<thead>
									<tr>
									<th>#</th>';
									if((!isset($_POST['return_id'])) && ($user_type == 'Admin' || $user_type == 'Super Admin'))
									{
										$table_data .= '<th>User Id</th>';
									}
									$table_data .= '<th>Transaction ID</th>
									<th>Book Name</th>
									<th>ISBN Number</th>
                                    <th>Category Name</th>
                                    <th>Author Name</th>
                                    <th>Return Location</th>
									<th>Book Returning Date</th>';
									if($user_type == 'Admin')
									{
										$table_data .= '<th>Action</th>';
									}
									$table_data .= '</tr>
								</thead>
								<tbody>';

								$s1 = 1;
								while ($row = mysqli_fetch_assoc($res_for_return)) 
								{
                                    $date=date_create($row['recording_time']);
                                    $book_return_date = date_format($date,"d-M-Y");

            						$table_data .= '<tr>
												<td>'.$s1.'</td>';
												if((!isset($_POST['return_id'])) && ($user_type == 'Admin' || $user_type == 'Super Admin'))
												{
													$table_data .= '<td>'.$row['user_id'].'</td>';
												}
												$table_data .= '<td> Tnx_'.$row['issue_id'].'</td>
												<td>'.$row['book_name'].'</td>
												<td>'.$row['isbn_number'].'</td>
                                                <td>'.$row['category_name'].'</td>
                                                <td>'.$row['author_name'].'</td>
                                                <td>'.$row['location_name'].'</td>
												<td>'.$book_return_date.'</td>';

												if($user_type == 'Admin')
												{
													$table_data .='<td>									
													<button type="button" id="delete_return" name="delete_return"  class="btn btn-danger btn-xs" onclick="sending_data_for_delete('.$row['return_id'].')"> Delete </button>
													</td>';
												}
												$table_data .='</tr>';	
												
											$s1++;
								}
							
						$table_data .= '</tbody>
						</table>';
						
		}
		else
		{
			$table_data .= 'There is no return book.';
		}	
		echo $table_data;
				
	?>

<script>
	function sending_data_for_show(return_id)
	{
		//alert(return_id);
	}

	function sending_data_for_delete(return_id)
 {
	 
	var conf = confirm("Are you sure!! You want to delete.");
        if(conf == true)
        {       
			var url_encoded_form_data = 'return_id='+return_id;
       
		  	 $.ajax({
			 		url: 'return_details/deleteing_return_list.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 			alert(data);
						load_data_list(return_id);
						load_page('return_details/return_list.php');	 

			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			}); // End of $.ajax({
		}
 }//End of function sending_data_for_delete()
	
	$(document).ready(function() {
		$('#datatable-buttons').DataTable( {
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