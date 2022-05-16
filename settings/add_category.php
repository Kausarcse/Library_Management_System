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
<script type='text/javascript' src='settings/add_category_form_validation.js'></script>

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
	load_data_list('cat_id');
});


 function sending_data_of_add_category_form_for_saving_in_database()
 {
       var validate = Form_Validation();
       var url_encoded_form_data = $("#add_category_form").serialize(); //This will read all control elements value of the form	
       if(validate != false)
	   {

	 		$.ajax({
			 		url: 'settings/add_category_saving.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);
						
							load_data_list('cat_id');
							
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({

       }//End of if(validate != false)

 }//End of function sending_data_of_add_category_form_for_saving_in_database()

 function sending_data_for_delete(cat_id)
 {
	var conf = confirm("Are you sure!! You want to delete.");
        if(conf == true)
        {       
			var url_encoded_form_data = 'cat_id='+cat_id;
       
		  	 $.ajax({
			 		url: 'settings/deleteing_add_category.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 			alert(data);
						load_data_list(cat_id);
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			}); // End of $.ajax({
		}
 }//End of function sending_data_for_delete()

 function sending_data_for_edit(cat_id)
 {
	var conf = confirm("Are you sure!! You want to update.");
        if(conf == true)
        { 
			var url_encoded_form_data = 'cat_id='+cat_id;
			$.ajax({
					url: 'settings/edit_category.php',
					dataType: 'text',
					type: 'POST',
					contentType: 'application/x-www-form-urlencoded',
					data: url_encoded_form_data,
					success: function( data, textStatus, jQxhr )
					{
						  //alert(data);
						$('#add_category_name_form').hide();
						$('#edit_category_name_form').html(data);
						$('#edit_category_name_form').show();

					},
					error: function( jqXhr, textStatus, errorThrown )
					{
							//console.log( errorThrown );
							alert(errorThrown);
					}
				}); // End of $.ajax({
		}

 }

 function sending_data_of_edit_category_form_for_saving_in_database()
 {
      // var validate = Form_Validation();
       var url_encoded_form_data = $("#edit_category_form").serialize(); 	
    //    if(validate != false)
	//    {

	 		$.ajax({
			 		url: 'settings/edit_category_saving.php',
			 		dataType: 'text',
			 		type: 'POST',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);
						
							load_data_list('cat_id');
							
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({

      // }//End of if(validate != false)

 }//End of function sending_data_of_edit_category_form_for_saving_in_database()

 function load_data_list(cat_id)
 {
	var url_encoded_form_data = 'cat_id='+cat_id;
	$.ajax({
			url: 'settings/category_list.php',
			dataType: 'text',
			type: 'POST',
			contentType: 'application/x-www-form-urlencoded',
			data: url_encoded_form_data,
			success: function( data, textStatus, jQxhr )
			{
				//  alert(data);
				 $('#data_table_category').html(data);
			},
			error: function( jqXhr, textStatus, errorThrown )
			{
					//console.log( errorThrown );
					alert(errorThrown);
			}
		}); // End of $.ajax({
 }



</script>
<div class="col-sm-12 col-md-12 col-lg-12">
<?php if($user_type == 'Admin') { ?>
		<div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->
 			<div id="add_category_name_form">
				<div class="panel-heading" style="color:#191970;"><b>Add Category</b></div> 

                <nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item active" aria-current="page">Home</li>
					     <li class="breadcrumb-item"><a onclick="load_page('settings/add_category.php')">Add Category</a></li>
					  </ol>
				 </nav>

				<form class="form-horizontal" action="" style="margin-top:10px;" name="add_category_form" id="add_category_form">

						<div class="form-group form-group-sm" id="form-group_for_category_name">
								<label class="control-label col-sm-3" for="category_name" style="color:#00008B;">Category Name:</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="category_name" name="category_name" placeholder="Enter Category Name" required>
								</div>
								<div class="col-sm-1">
								<i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('category_name')"></i>
								</div>						
							</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_category_name"> -->

						<div class="form-group form-group-sm">
								<div class="col-sm-offset-3 col-sm-5">
									<button type="button" class="btn btn-primary" id="cat_save" onClick="sending_data_of_add_category_form_for_saving_in_database()">Submit</button>
									<!-- <button type="reset" class="btn btn-success">Reset</button> -->
								</div>
						</div>

				</form>
			</div>
			<div id="edit_category_name_form" style="display: none;">

			</div>

		</div> <!-- End of <div class="panel panel-default"> -->
<?php }?>
	<div class="panel panel-default" >
   
        <div class="form-group form-group-sm">
	          <label class="control-label col-sm-12" style="font-size: 25px; text-align:center;padding-top:10px" for="search">Category List</label>
	    </div> <!-- End of <div class="form-group form-group-sm" -->


        <div class="form-group form-group-sm" id="data_table_category">
         


        </div> <!-- End of <div class="form-group form-group-sm" -->

		 

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