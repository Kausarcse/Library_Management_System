<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


$user_name = $_SESSION['user_name'];
$user_id = $_SESSION['user_id'];
$user_type = $_SESSION['user_type'];

?>
<script type='text/javascript' src='issue_details/add_issue_form_validation.js'></script>

<style>

.form-group		/* This is for reducing Gap among Form's Fields */
{

	margin-bottom: 5px;

}

</style>

<script>

function Remove_Value_Of_This_Element(element_name)
{

	 document.getElementById(element_name).value='';
	 var alternate_field_of_date = "alternate_"+element_name;

	 if(typeof(alternate_field_of_date) != 'undefined' && alternate_field_of_date != null) // This is for deleting Alternative Field of Date if exists
	 {
		document.getElementById(alternate_field_of_date).value='';
	 }

}

function Reset_Radio_Button(radio_element)
{

		var radio_btn = document.getElementsByName(radio_element);
		for(var i=0;i<radio_btn.length;i++) 
		{
				radio_btn[i].checked = false;
		}


}

function Reset_Checkbox(checkbox_element)
{
		for(var i=0;i<checkbox_element.length;i++)
		{

				checkbox_element[i].checked = false;

		}
}
</script>

<script>

$(document).ready(function()
{
	// e.preventDefault();
	load_data_list('issue_id');
});


 function sending_data_of_add_issue_form_for_saving_in_database()
 {
	// var available_qty = document.getElementById('available_qty').value;
	
	// if(available_qty != 0)
	// {
		var validate = Form_Validation();
        var url_encoded_form_data = $("#add_issue_form").serialize();
        // alert(url_encoded_form_data);
		var serial = document.getElementById("serial_number").value;
		var checkbox = document.getElementById('check_box_'+serial);
		
		if(validate != false)
		{
		   if(checkbox.checked == true)
		   {
				$.ajax({
			 		url: 'issue_details/add_issue_saving.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);
						
							load_data_list('issue_id');
							$('#table_row_'+serial+'').hide();
							load_page('issue_details/add_issue.php');	 

			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 	}); // End of $.ajax({
			}
			else if(checkbox.checked == false)
			{
				alert('Please check your book.');
			}
	 	}
	// }
	// else
	// {
	// 	var url_encoded_form_data = $("#add_issue_form").serialize();

	// 	$.ajax({
	// 		 		url: 'issue_details/returning_value_for_return_date_for_issue.php',
	// 		 		dataType: 'text',
	// 		 		type: 'post',
	// 		 		contentType: 'application/x-www-form-urlencoded',
	// 		 		data: url_encoded_form_data,
	// 		 		success: function( data, textStatus, jQxhr )
	// 		 		{
	// 		 				alert(data); 

	// 		 		},
	// 		 		error: function( jqXhr, textStatus, errorThrown )
	// 		 		{
	// 		 				//console.log( errorThrown );
	// 		 				alert(errorThrown);
	// 		 		}
	// 		 	}); // End of $.ajax({
	// 	// alert('This book is not available right now. Thanks')
	// }
      
	   

 }//End of function sending_data_of_add_issue_form_for_saving_in_database()


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
						load_page('issue_details/add_issue.php');	 

			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			}); // End of $.ajax({
		}
 }//End of function sending_data_for_delete()


 function load_data_list(issue_id)
 {
	var url_encoded_form_data = 'issue_id='+issue_id;
	$.ajax({
			url: 'issue_details/issue_list.php',
			dataType: 'text',
			type: 'POST',
			contentType: 'application/x-www-form-urlencoded',
			data: url_encoded_form_data,
			success: function( data, textStatus, jQxhr )
			{
				//  alert(data);
				$('#data_table_issue').html(data);
			},
			error: function( jqXhr, textStatus, errorThrown )
			{
					//console.log( errorThrown );
					//alert(errorThrown);
			}
		}); // End of $.ajax({
 }


 /***************************************************** FOR AUTO COMPLETE********************************************************************/

 $('.for_auto_complete').chosen();



/***************************************************** FOR AUTO COMPLETE********************************************************************/

function returning_book_details(book_name)
{
    // alert(book_name);
    var url_encoded_form_data = 'book_name='+encodeURIComponent(book_name);
    //  alert(url_encoded_form_data);
    // exit();
    $.ajax({
			url: 'issue_details/returning_value_for_book_details_info.php',
			dataType: 'text',
			type: 'POST',
			contentType: 'application/x-www-form-urlencoded',
			data: url_encoded_form_data,
			success: function( data, textStatus, jQxhr )
			{
				// alert(data);
				$('#book_information_for_issue').html(data);
			},
			error: function( jqXhr, textStatus, errorThrown )
			{
					//console.log( errorThrown );
					alert(errorThrown);
			}
		}); // End of $.ajax({
}


 function returning_value_for_required_qty(details)
    {
        //   alert(details);
        var splitted_details = details.split('?fs?');
        var serial = splitted_details[0];
		var book_id = splitted_details[1];
        var isbn_number = splitted_details[2];
        var author_id = splitted_details[3];
		var author_name = splitted_details[4];
        var available_qty = splitted_details[5];

        document.getElementById('serial_number').value = serial;
		document.getElementById('book_id').value = book_id;
        document.getElementById('isbn_number').value = isbn_number;
        document.getElementById('author_id').value = author_id;
		document.getElementById('author_name').value = author_name;
        document.getElementById('available_qty').value = available_qty;

    }

</script>
<div class="col-sm-12 col-md-12 col-lg-12">

		<div class="panel panel-default"> 
 			<div id="add_issue_name_form">
				<div class="panel-heading" style="color:#191970;"><b>Issue Information</b></div> 

                <nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item active" aria-current="page">Home</li>
					     <li class="breadcrumb-item"><a onclick="load_page('issue_details/add_issue.php')">Add Issue</a></li>
					  </ol>
				 </nav>

				<form class="form-horizontal" action="" style="margin-top:10px;" name="add_issue_form" id="add_issue_form">

                    <div class="form-group form-group-sm" id="form-group_for_user_id" style="display: none;">
                            <label class="control-label col-sm-3" for="user_id" style="color:#00008B;">User ID: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="user_id" name="user_id" value="<?php echo $user_id ?>" readonly>
								
                            </div>					
                    </div> 

                    <div class="form-group form-group-sm" id="form-group_for_book">
                            <label class="control-label col-sm-3" for="book_name" style="color:#00008B;">Book Name:<span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <select  class="form-control for_auto_complete" id="book_name" name="book_name" onchange="returning_book_details(this.value)">
                                            <option select="selected" value="">Select Book Name</option>
                                            <?php 
                                                 $sql = "SELECT distinct book_name from `book_list` order by `book_id` desc";
                                                 $result= mysqli_query($con,$sql) or die(mysqli_error($con));
                                                 while( $row = mysqli_fetch_array($result))
                                                 {
                                                     echo '<option value="'.$row['book_name'].'">'.$row['book_name'].'</option>';
                                                 }
                                             ?>
                                </select>
                            </div>					
                    </div>

                    <div id="book_information_for_issue" >

                    </div>

                    <input type="hidden" id="serial_number" name="serial_number" value="">
					<input type="hidden" id="book_id" name="book_id" value="">
                    <input type="hidden" id="isbn_number" name="isbn_number" value="">
                    <input type="hidden" id="author_id" name="author_id" value="">
					<input type="hidden" id="author_name" name="author_name" value="">
                    <input type="hidden" id="available_qty" name="available_qty" value="">
                    <input type="hidden" id="required_qty" name="required_qty" value="1">


                    <div class="form-group form-group-sm">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button type="button" class="btn btn-primary" id="auth_save" onClick="sending_data_of_add_issue_form_for_saving_in_database()">Submit</button>
                                <!-- <button type="reset" class="btn btn-success">Reset</button> -->
                            </div>
                    </div>

				</form>
			</div>
			<div id="edit_issue_name_form" style="display: none;">

			</div>

		</div> <!-- End of <div class="panel panel-default"> -->

	<div class="panel panel-default" >
   
        <div class="form-group form-group-sm">
	          <label class="control-label col-sm-5" style="font-size: 20px; text-align:left" for="search">Issued Book List</label>
	    </div> <!-- End of <div class="form-group form-group-sm" -->


        <div class="form-group form-group-sm" id="data_table_issue">
         


        </div> 

		 

    </div> <!-- End of <div class="panel panel-default"> -->


</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->

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