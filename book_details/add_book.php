<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


?>
<script type='text/javascript' src='book_details/add_book_form_validation.js'></script>

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
	load_data_list('book_id');
});


 function sending_data_of_add_book_form_for_saving_in_database()
 {

       var validate = Form_Validation();
       var url_encoded_form_data = $("#add_book_form").serialize(); //This will read all control elements value of the form	
	   
       if(validate != false)
	   {

	 		$.ajax({
			 		url: 'book_details/add_book_saving.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);
						
							load_data_list('book_id');
							// load_page('book_details/add_book.php');	 
							
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({

       }//End of if(validate != false)

 }//End of function sending_data_of_add_book_form_for_saving_in_database()

 function sending_data_for_delete(book_id)
 {
	var conf = confirm("Are you sure!! You want to delete.");
        if(conf == true)
        {   
   
			var url_encoded_form_data = 'book_id='+book_id;
       
		  	 $.ajax({
			 		url: 'book_details/deleteing_book_list.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 			alert(data);
						load_data_list(book_id);
						// load_page('book_details/add_book.php');
	 
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			}); // End of $.ajax({
		}
 }

 function sending_data_for_edit(book_id)
 {
	
	var conf = confirm("Are you sure!! You want to update.");
	
        if(conf == true)
        { 

			var url_encoded_form_data = 'book_id='+book_id;
			$.ajax({
					url: 'book_details/edit_book_list.php',
					dataType: 'text',
					type: 'POST',
					contentType: 'application/x-www-form-urlencoded',
					data: url_encoded_form_data,
					success: function( data, textStatus, jQxhr )
					{
						//   alert(data);
						$('#add_book_name_form').hide();
						$('#edit_book_name_form').html(data);
						$('#edit_book_name_form').show();


					},
					error: function( jqXhr, textStatus, errorThrown )
					{
							//console.log( errorThrown );
							alert(errorThrown);
					}
				}); // End of $.ajax({
		}

 }


 function sending_data_of_edit_book_form_for_saving_in_database()
 {
      // var validate = Form_Validation();
       var url_encoded_form_data = $("#edit_book_form").serialize(); 	
    //    if(validate != false)
	//    {

	 		$.ajax({
			 		url: 'book_details/edit_book_list_saving.php',
			 		dataType: 'text',
			 		type: 'POST',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);
						
							load_data_list('book_id');
							// load_page('book_details/add_book.php');	 

							
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({

      // }//End of if(validate != false)

 }//End of function sending_data_of_edit_book_form_for_saving_in_database()

 function load_data_list(book_id)
 {
	var url_encoded_form_data = 'book_id='+book_id;
	$.ajax({
			url: 'book_details/book_list.php',
			dataType: 'text',
			type: 'POST',
			contentType: 'application/x-www-form-urlencoded',
			data: url_encoded_form_data,
			success: function( data, textStatus, jQxhr )
			{
				//  alert(data);
				 $('#data_table_book').html(data);
			},
			error: function( jqXhr, textStatus, errorThrown )
			{
					//console.log( errorThrown );
					alert(errorThrown);
			}
		}); // End of $.ajax({
 }


 /***************************************************** FOR AUTO COMPLETE********************************************************************/

 $('.for_auto_complete').chosen();



/***************************************************** FOR AUTO COMPLETE********************************************************************/


</script>
<div class="col-sm-12 col-md-12 col-lg-12">

		<div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->
 			<div id="add_book_name_form">
				<div class="panel-heading" style="color:#191970;"><b>Book Information</b></div> 

                <nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item active" aria-current="page">Home</li>
					     <li class="breadcrumb-item"><a onclick="load_page('book_details/add_book.php')">Add Book</a></li>
					  </ol>
				 </nav>

				<form class="form-horizontal" action="" style="margin-top:10px;" name="add_book_form" id="add_book_form">

                    <div class="form-group form-group-sm" id="form-group_for_book_name">
                            <label class="control-label col-sm-3" for="book_name" style="color:#00008B;">Book Name: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="book_name" name="book_name" placeholder="Enter Book Name" required>

                            </div>
                            <div class="col-sm-1">
                                <i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('book_name')"></i>
                            </div>						
                    </div> 

					<div class="form-group form-group-sm" id="form-group_for_isbn_number">
                            <label class="control-label col-sm-3" for="isbn_number" style="color:#00008B;">ISBN Number: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="isbn_number" name="isbn_number" placeholder="Enter ISBN Number" required>
 								<!-- <p style="color: red;">***Must including isbn number***</p> -->
                            </div>
                            <div class="col-sm-1">
                                <i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('isbn_number')"></i>
                            </div>						
                    </div> 

                    <div class="form-group form-group-sm" id="form-group_for_category">
                            <label class="control-label col-sm-3" for="category_name" style="color:#00008B;">Category Name: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <select  class="form-control for_auto_complete" id="category_name" name="category_name">
                                            <option select="selected" value="">Select Category Name</option>
                                            <?php 
                                                 $sql = "SELECT * from `category`  order by `id`";
                                                 $result= mysqli_query($con,$sql) or die(mysqli_error($con));
                                                 while( $row = mysqli_fetch_array($result))
                                                 {

                                                     echo '<option value="'.$row['cat_id'].'?fs?'.$row['category_name'].'">'.$row['category_name'].'</option>';

                                                 }

                                             ?>
                                </select>
                            </div>
                            <div class="col-sm-1">
                                <i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('category_name')"></i>
                            </div>						
                    </div>

                    <div class="form-group form-group-sm" id="form-group_for_author">
                            <label class="control-label col-sm-3" for="author_name" style="color:#00008B;">Author Name:<span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <select  class="form-control for_auto_complete" id="author_name" name="author_name">
                                            <option select="selected" value="">Select Author Name</option>
                                            <?php 
                                                 $sql = "SELECT * from `author` order by `id`";
                                                 $result= mysqli_query($con,$sql) or die(mysqli_error($con));
                                                 while( $row = mysqli_fetch_array($result))
                                                 {
                                                     echo '<option value="'.$row['author_id'].'?fs?'.$row['author_name'].'">'.$row['author_name'].'</option>';
                                                 }
                                             ?>
                                </select>
                            </div>
                            <div class="col-sm-1">
                                <i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('author_name')"></i>
                            </div>						
                    </div>

					<div class="form-group form-group-sm" id="form-group_for_location">
                            <label class="control-label col-sm-3" for="location_name" style="color:#00008B;">Location:<span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <select  class="form-control for_auto_complete" id="location_name" name="location_name">
                                            <option select="selected" value="">Select Location</option>
                                            <?php 
                                                 $sql = "SELECT * from `location_info` order by `loc_id`";
                                                 $result= mysqli_query($con,$sql) or die(mysqli_error($con));
                                                 while( $row = mysqli_fetch_array($result))
                                                 {
                                                     echo '<option value="'.$row['loc_id'].'?fs?'.$row['location_name'].'">'.$row['location_name'].'</option>';
                                                 }
                                             ?>
                                </select>
                            </div>
                            <div class="col-sm-1">
                                <i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('location_name')"></i>
                            </div>						
                    </div>

					<div class="form-group form-group-sm" id="form-group_for_quantity">
                            <label class="control-label col-sm-3" for="book_name" style="color:#00008B;">Quantity: <span style="color: red;">*</span></label>
                            <div class="col-sm-5">
                                <input type="number" class="form-control" id="book_quantity" name="book_quantity" placeholder="Enter book quantity" required>
 								<!-- <p style="color: red;">***Must including isbn number***</p> -->
                            </div>
                            <div class="col-sm-1">
                                <i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('book_quantity')"></i>
                            </div>						
                    </div> 
                   

                    <div class="form-group form-group-sm">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button type="button" class="btn btn-primary" id="auth_save" onClick="sending_data_of_add_book_form_for_saving_in_database()">Submit</button>
                                <!-- <button type="reset" class="btn btn-success">Reset</button> -->
                            </div>
                    </div>

				</form>
			</div>
			<div id="edit_book_name_form" style="display: none;">

			</div>

		</div> <!-- End of <div class="panel panel-default"> -->

	<div class="panel panel-default" >
   
        <div class="form-group form-group-sm">
	          <label class="control-label col-lg-12" style="font-size: 20px; text-align:center" for="search">Book List</label>
	    </div> <!-- End of <div class="form-group form-group-sm" -->


        <div class="form-group form-group-sm" id="data_table_book">
         


        </div> <!-- End of <div class="form-group form-group-sm" -->
		<!-- <div class="form-group form-group-sm">
						<button class="btn btn-success" id="print" onclick="pdf_print()">Print</button>

				
								</div> -->
		 

    </div> <!-- End of <div class="panel panel-default"> -->


</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->

<script>

// function pdf_print()
//     {

//      	var divContents = document.getElementById("data_table_book").innerHTML;
//             var a = window.open('', '', 'height=500, width=500');
//             a.document.write('<html>');
//             a.document.write('<body > ');
//             a.document.write(divContents);
//             a.document.write('</body></html>');
//             a.document.close();
//             a.print();

                           
//     }
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