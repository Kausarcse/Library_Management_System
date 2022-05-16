<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


$user_name = $_SESSION['user_name'];
$user_id = $_SESSION['user_id'];
$user_type = $_SESSION['user_type'];

$table_data = '';
$dept_id = $_POST['dept_id'];
$sql_for_department = "SELECT * FROM department_info ORDER BY dept_id DESC";

$res_for_department = mysqli_query($con, $sql_for_department);

        if(mysqli_num_rows($res_for_department)>0)
        {
			$table_data .= '<table id="datatable-buttons" class="table table-striped table-bordered">
								<thead>
									<tr>
									<th>SI</th>
									<th>Department Name</th>';
									if($user_type == 'Admin'){
										$table_data .= '<th>Action</th>';
									}
									 $table_data .= '</tr>
								</thead>
								<tbody>';

								$s1 = 1;
								while ($row = mysqli_fetch_assoc($res_for_department)) 
								{
            						$table_data .= '<tr>
												<td>'.$s1.'</td>
												<td>'.$row['department_name'].'</td>';
												if($user_type == 'Admin'){
												$table_data .= '<td>
													<button type="submit" id="edit_department" name="edit_department"  class="btn btn-primary btn-xs" onclick="sending_data_for_edit('.$row['dept_id'].')"> Edit </button>
										
													<button type="button" id="delete_department" name="delete_department"  class="btn btn-danger btn-xs" onclick="sending_data_for_delete('.$row['dept_id'].')"> Delete </button>
												</td>';
												}
												 $table_data .= '</tr>';	
											$s1++;
								}
							
						$table_data .= '</tbody>
						</table>';
						  echo $table_data;
		}	
				
	?>

<script>
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