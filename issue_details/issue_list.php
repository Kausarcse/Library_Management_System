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

$table_data = '';
if(isset($_POST['issue_id']))
{
	$issue_id = $_POST['issue_id'];
	$sql_for_issue = "SELECT DISTINCT bl.book_id,bl.book_name, bl.isbn_number, bl.cat_id, bl.category_name, bl.author_id, bl.author_name, bl.loc_id, bl.location_name, 
						bl.available_quantity, ii.issue_id, ii.user_id, ii.issue_quantity, ii.book_return_date, ii.recording_time FROM book_list bl 
						INNER JOIN issue_info ii ON bl.isbn_number = ii.isbn_number and bl.book_name = ii.book_name
						WHERE ii.user_id = '$user_id' and ii.status = '1'
						ORDER BY ii.issue_id DESC";
}
else if($user_type == 'User')
{
	
	$table_data .= '<div>
	<h4 style="font-size: 30px; text-align:center"><strong>Issued Book List</strong></h4>
	</div>';
	$sql_for_issue = "SELECT DISTINCT bl.book_id,bl.book_name, bl.isbn_number, bl.cat_id, bl.category_name, bl.author_id, bl.author_name, bl.loc_id, bl.location_name, 
						bl.available_quantity, ii.issue_id, ii.user_id, ii.issue_quantity, ii.book_return_date, ii.recording_time FROM book_list bl 
						INNER JOIN issue_info ii ON bl.isbn_number = ii.isbn_number and bl.book_name = ii.book_name
						WHERE ii.user_id = '$user_id'
						ORDER BY ii.issue_id DESC";
}
else
{
	
	$table_data .= '<div>
	<h4 style="font-size: 30px; text-align:center"><strong>Issued Book List</strong></h4>
	</div>';
	$sql_for_issue = "SELECT DISTINCT bl.book_id,bl.book_name, bl.isbn_number, bl.cat_id, bl.category_name, bl.author_id, bl.author_name, bl.loc_id, bl.location_name, 
						bl.available_quantity, ii.issue_id, ii.user_id, ii.issue_quantity, ii.book_return_date, ii.recording_time FROM book_list bl 
						INNER JOIN issue_info ii ON bl.isbn_number = ii.isbn_number and bl.book_name = ii.book_name
						ORDER BY ii.issue_id DESC";
}
// exit();

	$res_for_issue = mysqli_query($con, $sql_for_issue);

        if(mysqli_num_rows($res_for_issue)>0)
        {
			$table_data .= '<table id="datatable-buttons" class="table table-striped table-bordered">
								<thead>
									<tr>
									<th>#</th>';
									if((!isset($_POST['issue_id'])) && ($user_type == 'Admin' || $user_type == 'Super Admin'))
									{
										$table_data .= '<th>User ID</th>';
									}
									$table_data .= '<th>Transaction ID</th>
									<th>Book Name</th>
									<th>ISBN Number</th>
                                    <th>Category Name</th>
                                    <th>Author Name</th>
                                    <th>Location</th>
									<th>Issue Quantity</th>
									<th>Book Issueing Date</th>
									<th>Book Return Last Date</th>';
									if($user_type == 'Admin')
									{
										$table_data .= '<th>Action</th>';
									}
									$table_data .= '</tr>
								</thead>
								<tbody>';

								$s1 = 1;
								while ($row = mysqli_fetch_assoc($res_for_issue)) 
								{

									$return_date=date_create($row['book_return_date']);
                                    $book_return_date = date_format($return_date,"d-M-Y");

									$issue_date=date_create($row['recording_time']);

                                    $book_issue_date = date_format($issue_date,"d-M-Y");

                                    $return_dates = date_format($return_date,"Y-m-d");

									$current_date = date('Y-m-d');

									$user_id_new = $row['user_id'];
									$book_id = $row['book_id'];
									$issue_id = $row['issue_id'];

									$sql_for_ret_user = "SELECT * FROM return_info WHERE `user_id` = '$user_id_new' AND issue_id = '$issue_id' AND book_id = '$book_id'";
									$res_for_ret_user = mysqli_query($con, $sql_for_ret_user);

									// $row_for_ret_user = mysqli_fetch_assoc($res_for_ret_user);

									if(mysqli_num_rows($res_for_ret_user)>0)
        							{
										$table_data .= '<tr style="background-color: #E7EAED;">
										<td>'.$s1.'</td>';
										if((!isset($_POST['issue_id'])) && ($user_type == 'Admin' || $user_type == 'Super Admin'))
										{
											$table_data .= '<td>'.$row['user_id'].'</td>';
										}
										$table_data .= '<td> Tnx_'.$row['issue_id'].'</td>
										<td>'.$row['book_name'].'</td>
										<td>'.$row['isbn_number'].'</td>
										<td>'.$row['category_name'].'</td>
										<td>'.$row['author_name'].'</td>
										<td>'.$row['location_name'].'</td>
										<td>'.$row['issue_quantity'].'</td>
										<td>'.$book_issue_date.'</td>';
										if($return_dates < $current_date)
										{
											$table_data .= '<td style="color:red">'.$book_return_date.'</td>';
										}
										else
										{
											$table_data .= '<td style="color:black">'.$book_return_date.'</td>';

										}

										if($user_type == 'Admin')
										{
											$table_data .='<td>									
											<button type="button" id="delete_issue" name="delete_issue"  class="btn btn-danger btn-xs" onclick="sending_data_for_delete('.$row['issue_id'].')"> Delete </button>
											</td>';
										}
										$table_data .='</tr>';	
										$s1++;
									}
									else
									{
										$table_data .= '<tr style="background-color: white;">
												<td>'.$s1.'</td>';
												if((!isset($_POST['issue_id'])) && ($user_type == 'Admin' || $user_type == 'Super Admin'))
												{
													$table_data .= '<td>'.$row['user_id'].'</td>';
												}
												$table_data .= '<td> Tnx_'.$row['issue_id'].'</td>
												<td>'.$row['book_name'].'</td>
												<td>'.$row['isbn_number'].'</td>
                                                <td>'.$row['category_name'].'</td>
                                                <td>'.$row['author_name'].'</td>
                                                <td>'.$row['location_name'].'</td>
												<td>'.$row['issue_quantity'].'</td>
												<td>'.$book_issue_date.'</td>';
												if($return_dates < $current_date)
												{
													$table_data .= '<td style="color:red">'.$book_return_date.'</td>';
												}
												else
												{
													$table_data .= '<td style="color:black">'.$book_return_date.'</td>';

												}

												if($user_type == 'Admin')
												{
													$table_data .='<td>									
													<button type="button" id="delete_issue" name="delete_issue"  class="btn btn-danger btn-xs" onclick="sending_data_for_delete('.$row['issue_id'].')"> Delete </button>
													</td>';
												}
												$table_data .='</tr>';	
											$s1++;
									}
            						
								}
							
						$table_data .= '</tbody>
						</table>';
						
		}
		else
		{
			$table_data .= 'There is no issue book.';
		}	
		echo $table_data;
				
	?>

<script>
function sending_data_for_delete(issue_id)
 {

	var conf = confirm("Are you sure!! You want to delete.");
        if(conf == true)
        {       
			var url_encoded_form_data = 'issue_id='+issue_id;
       
		  	 $.ajax({
			 		url: 'issue_details/deleteing_issue_list.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 			alert(data);
						load_data_list(issue_id);
						load_page('issue_details/issue_list.php');	 

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