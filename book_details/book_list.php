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
if(isset($_POST['book_id']))
{
	$book_id = $_POST['book_id'];
	$sql_for_book = "SELECT * FROM book_list ORDER BY id DESC";
}
else
{
	$table_data .= '<div id="id_for_all_book_list"><div>
		<h4 style="font-size: 30px; text-align:center"><strong>Book List</strong></h4>
		</div>';
	$table_data .= '<div id="div_book_report_details" >
	<table class="table table-bordered" style="display: none;">
		<thead>
			<tr>
				<td colspan="9" style="text-align: center; font-size: 25px; color: black; font-weight: bold; border: 1px solid">
				   Book List
				</td>
			</tr>
		</thead>
	</table>';
	$sql_for_book = "SELECT * FROM book_list ORDER BY id DESC";
}

$res_for_book = mysqli_query($con, $sql_for_book);

        if(mysqli_num_rows($res_for_book)>0)
        {
			$table_data .= '<table id="datatable-buttons" class="table table-striped table-bordered">
								<thead>
									<tr>
									<th>#</th>
									<th>Book Name</th>
									<th>ISBN Number</th>
                                    <th>Category Name</th>
                                    <th>Author Name</th>
                                    <th>Location</th>
									<th>Book Quantity</th>
									<th>Available Quantity</th>';
									if(isset($_POST['book_id']) && $user_type == 'Admin')
									{
										$table_data .= '<th>Action</th>';
									}
									$table_data .= '</tr>
								</thead>
								<tbody>';

								$s1 = 1;
								while ($row = mysqli_fetch_assoc($res_for_book)) 
								{
            						$table_data .= '<tr>
												<td>'.$s1.'</td>
												<td>'.$row['book_name'].'</td>
												<td>'.$row['isbn_number'].'</td>
                                                <td>'.$row['category_name'].'</td>
                                                <td>'.$row['author_name'].'</td>
                                                <td>'.$row['location_name'].'</td>
												<td>'.$row['quantity'].'</td>
												<td>'.$row['available_quantity'].'</td>';
												if(isset($_POST['book_id']) && $user_type == 'Admin')
												{
													$table_data .= '<td>
													<button type="button" id="edit_book" name="edit_book"  class="btn btn-primary btn-xs" onclick="sending_data_for_edit('.$row['id'].')"> Edit </button>
										
													<button type="button" id="delete_book" name="delete_book"  class="btn btn-danger btn-xs" onclick="sending_data_for_delete('.$row['id'].')"> Delete </button>
												</td>';
												}
												$table_data .= '</tr>';	
											$s1++;
								}
							
						$table_data .= '</tbody>
						</table>';
					// 	$table_data .= '<a href="book_details/pdf_file_for_book_list_details.php?all_data='.urlencode($user_name).'" target="_blank">
					// 		<button type="button" id="pdf_file_for_book_list" name="pdf_file_for_book_list"  class="btn btn-primary btn-xs">Download Book List</button>
					//    </a>';
						if($user_type == 'Admin')
						{
						}
						else
						{
							
							$table_data .= '</div> <div id="id_for_book_issue"></div>  ';

						}
						$table_data .= '<div class="col-sm-6">
						<button class="btn btn-success" id="print" onclick="pdf_print()">Print</button>

				
								</div>';
						echo $table_data;
		}	
				
	?>

<script>

// function sending_data_for_show(book_id)
// {
// 	// $('#id_for_all_book_list').hide();
// 	// $('#id_for_book_issue').load("issue_details/add_issue.php?book_id="+encodeURIComponent(book_id));

// }


function exportF(elem) {
    var table = document.getElementById("div_book_report_details");
    var html = table.innerHTML;
    var url = 'data:application/vnd.ms-excel,' + escape(html); // Set your html table into url 
    elem.setAttribute("href", url);
    elem.setAttribute("download", "div_book_report_details.xls"); // Choose the file name
    return false;
}
	
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