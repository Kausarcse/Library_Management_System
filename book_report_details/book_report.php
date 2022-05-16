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


?>
<style>
  .form-group {
    margin-bottom: 5px;
}
</style>

</head>
<body class="nav-md">





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

 /***************************************************** FOR AUTO COMPLETE********************************************************************/

$('.for_auto_complete').chosen();


/***************************************************** FOR AUTO COMPLETE********************************************************************/



	
function change_up_down_arrow_icon(icon_lcation)
{
	
	
	//alert(icon_lcation);
	var class_name = $('#'+icon_lcation).attr('class');
    //alert(class_name);
	if(class_name=="glyphicon glyphicon-chevron-up text-right")
	{
		$('#'+icon_lcation).removeClass();
		$('#'+icon_lcation).addClass("glyphicon glyphicon-chevron-down text-right");
	}
	else
	{
		$('#'+icon_lcation).removeClass();
		$('#'+icon_lcation).addClass("glyphicon glyphicon-chevron-up text-right");
		
	}
	
	
} // End of function change_up_down_arrow_icon(icon_lcation)


  $( function() 
  {
    $( "#from_date" ).datepicker({ dateFormat: 'dd-M-yy' });
    // $( "#from_date" ).datepicker({ dateFormat: 'yy-mm-dd' });
  } );

  $( function() 
  {
    $( "#to_date" ).datepicker({ dateFormat: 'dd-M-yy' });
  } );



function get_book_info_data()
{ 
	
	var url_encoded_form_data = $("#filter_form_for_book_info").serialize(); 	
		$.ajax({
			url: 'book_report_details/book_report_details_data_table.php',
			dataType: 'text',
			type: 'post',
			contentType: 'application/x-www-form-urlencoded',
			data: url_encoded_form_data,
			success: function( data, textStatus, jQxhr )
			{
				document.getElementById('book_info_table_div').innerHTML=data;
				document.getElementById('overall_report_table_div').style.display = 'none';
				document.getElementById('for_pdf_print_details').style.display = 'none';
				document.getElementById('book_info_table_div').style.display = 'block';
				document.getElementById('for_pdf_print').style.display = 'block';

			},
			error: function( jqXhr, textStatus, errorThrown )
			{
				//console.log( errorThrown );
				alert(errorThrown);
			}
		}); // End of $.ajax({
	}


	function overall_report_details(overall_report)
	{
		var url_encoded_form_data = 'overall_report='+overall_report;	

		$.ajax({
			url: 'book_report_details/returning_overall_report_details_data_table.php',
			dataType: 'text',
			type: 'post',
			contentType: 'application/x-www-form-urlencoded',
			data: url_encoded_form_data,
			success: function( data, textStatus, jQxhr )
			{
				document.getElementById('overall_report_table_div').innerHTML=data;
				document.getElementById('overall_report_table_div').style.display = 'block';
				document.getElementById('for_pdf_print_details').style.display = 'block';
				document.getElementById('book_info_table_div').style.display = 'none';
				document.getElementById('for_pdf_print').style.display = 'none';

			},
			error: function( jqXhr, textStatus, errorThrown )
			{
				//console.log( errorThrown );
				alert(errorThrown);
			}
		}); // End of $.ajax({
	}

	function display_search_button()
	{
		document.getElementById('div_id_search').style.display = 'block';
		document.getElementById('overall_report_table_div').style.display = 'none';
		document.getElementById('for_pdf_print_details').style.display = 'none';
		document.getElementById('book_info_table_div').style.display = 'block';
		// document.getElementById('for_pdf_print').style.display = 'block';

	}

</script>

<div id="full_container">

	<div class="col-sm-12 col-md-12 col-lg-12">

		<div class="panel panel-default" id="panel_load_for_full_form">
		
			<div class="panel-heading" style="color:#191970;font-size:20px;font-weight:bold">
				<div class="row"  data-toggle="collapse" data-target="#search_form_collpapsible_div" onClick="change_up_down_arrow_icon(this.childNodes[5].childNodes[1].id)"> <!-- Row for Panel Heading and Chevron Up Alingment -->
					<span class="col-sm-11" style="text-align:center;"><b>Book Information Report</b></span>
					<div  style="text-align:right; padding-right:10px;" id='test'> <i class="glyphicon glyphicon-chevron-up text-right"  id='panel_heading_icon'></i></div>
				</div> 
			</div> <!-- End of <div class="panel-heading" style="color:#191970;"> -->

			<div id='search_form_collpapsible_div' class="collapse in"> 

				<div id="filter_div" style="padding-top:10px;">
				
					<form id="filter_form_for_book_info" name="filter_form_for_book_info" action="" method="post" enctype="multipart/form-data" class="form-horizontal form-label-left">

					<!-- <div class="form-group form-group-sm" id="form-group_for_overall_report" >
							<label class="control-label col-sm-3" for="overall_report" style="color:#00008B;">Report Details:</label>
							<div class="col-sm-5">
								<select  class="form-control" id="overall_report" name="overall_report" onchange="overall_report_details(this.value)">
								<option select="selected" value="select">Select Report Type</option>
								<option value="book_list">Book List</option>
								<option value="issue_info">Issue List</option>
								<option value="return_info">Return List</option>

								</select>
								<script>
													$("#overall_report").select2({
														placeholder: "Select Report Type",
														theme: "classic",
														selectOnClose: true,
														closeOnSelect: true,
														allowClear: true
													});
											</script>
							</div>
						</div>  -->


						<div class="form-group form-group-sm" id="form-group_for_feom_date" style="color:#00008B;">
							<label class="control-label col-sm-3" for="from_date">From Date :</label>
							<div class="col-sm-4" style="padding-right: 0">
								<input type="text" class="form-control" id="from_date" name="from_date" placeholder="Please provide From date" onchange="display_search_button()" readonly>
							</div>
							<div class="col-sm-1" style="padding-left: 0">
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
							<div class="col-sm-1">
								<i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('from_date')"></i>
							</div>

						</div>

						<div class="form-group form-group-sm" id="form-group_for_to_date" style="color:#00008B;">
							<label class="control-label col-sm-3 " for="to_date">To Date :</label>
							<div class="col-sm-4" style="padding-right: 0">
								<input type="text" id="to_date" class="form-control" name="to_date"  placeholder="Please provide To date" onchange="display_search_button()" readonly>
							</div>

							<div class="col-sm-1" style="padding-left: 0px">
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
							<div class="col-sm-1">
								<i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('to_date')"></i>
							</div>
						</div>

						<div class="form-group form-group-sm" id="form-group_for_book_name" >
							<label class="control-label col-sm-3" for="book_name" style="color:#00008B;">Book Name :</label>
							<div class="col-sm-5">
								<select  class="form-control" id="book_name" name="book_name" onchange="display_search_button()">
								<option select="selected" value="select">Select Book Name</option>
									<?php 
									$sql = 'select DISTINCT book_name from `book_list`';
									$result= mysqli_query($con,$sql) or die(mysqli_error($con));
									while( $row = mysqli_fetch_array( $result))
									{
										echo '<option value="'.$row['book_name'].'">'.$row['book_name'].'</option>';
									}
									?>
								</select>
								<script>
													$("#book_name").select2({
														placeholder: "Select Book Name",
														theme: "classic",
														selectOnClose: true,
														closeOnSelect: true,
														allowClear: true
													});
											</script>
							</div>
						</div> 

						<div class="form-group form-group-sm" id="form-group_for_user_id" >
							<label class="control-label col-sm-3" for="user_id" style="color:#00008B;">Employee ID :</label>
							<div class="col-sm-5">
								<select  class="form-control" id="user_id" name="user_id" onchange="display_search_button()">
								<option select="selected" value="select">Select your employee ID</option>
									<?php 
									$sql = 'select DISTINCT user_id from `user_info`';
									$result= mysqli_query($con,$sql) or die(mysqli_error($con));
									while( $row = mysqli_fetch_array( $result))
									{
										echo '<option value="'.$row['user_id'].'">'.$row['user_id'].'</option>';
									}
									?>
								</select>
								<script>
													$("#user_id").select2({
														placeholder: "Select your employee ID",
														theme: "classic",
														selectOnClose: true,
														closeOnSelect: true,
														allowClear: true
													});
											</script>
							</div>
						</div> 


						<div class="form-group form-group-sm" id="form-group_for_author_name" >
							<label class="control-label col-sm-3" for="author_name" style="color:#00008B;">Author Name :</label>
							<div class="col-sm-5">
								<select  class="form-control" id="author_name" name="author_name" onchange="display_search_button()">
								<option select="selected" value="select">Select Author Name</option>
									<?php 
									$sql = 'select DISTINCT author_name from `author`';
									$result= mysqli_query($con,$sql) or die(mysqli_error($con));
									while( $row = mysqli_fetch_array( $result))
									{
										echo '<option value="'.$row['author_name'].'">'.$row['author_name'].'</option>';
									}
									?>
								</select>
								<script>
													$("#author_name").select2({
														placeholder: "Select Author Name",
														theme: "classic",
														selectOnClose: true,
														closeOnSelect: true,
														allowClear: true
													});
											</script>
							</div>
						</div> 

						<!-- <div class="form-group form-group-sm" id="form-group_for_category_name" >
							<label class="control-label col-sm-3" for="category_name" style="color:#00008B;">Category Name :</label>
							<div class="col-sm-5">
								<select  class="form-control" id="category_name" name="category">
								<option select="selected" value="select">Select Category Name</option>
									<?php 
									// $sql = 'select DISTINCT category_name from `category`';
									// $result= mysqli_query($con,$sql) or die(mysqli_error($con));
									// while( $row = mysqli_fetch_array( $result))
									// {
									// 	echo '<option value="'.$row['category_name'].'">'.$row['category_name'].'</option>';
									// }
									?>
								</select>
								<script>
													$("#category_name").select2({
														placeholder: "Select Category Name",
														theme: "classic",
														selectOnClose: true,
														closeOnSelect: true,
														allowClear: true
													});
											</script>
							</div>
						</div>  -->

						
						<div class="form-group form-group-sm" id="form-group_for_process_type">
							<div class="col-sm-5">

							</div>
							<div class="col-sm-1" id="div_id_search" style="display: none;">
								<button type="button" class="btn btn-info" name="submit" onclick="get_book_info_data()">Search</button> 
							</div>
							<div class="col-sm-1" id="for_pdf_print"  style="display: none;">
								<button class="btn btn-success" id="print" onclick="pdf_print()">Print</button>

							</div>
							<div class="col-sm-1" id="for_pdf_print_details"  style="display: none;">
								<button class="btn btn-success" id="print_details" onclick="pdf_print_details()">Print</button>

							</div>
							<!-- <div class="col-sm-1">
								<button type="reset" name="reset" id="reset" class="btn btn-primary">Reset</button>
							</div> -->
							<div class="col-sm-3">

							</div>
						</div> 


					</form>  <!--  End of <form id="filter_form_for_book_info"> -->

				</div>   <!-- End of filter_div -->
				
				<div id="book_info_table_div" style="margin-top: 20px;">
			
				</div> 
				<div id="overall_report_table_div" style="margin-top: 20px;">
			
				</div> 

				
	            <!-- <button class="btn btn-success"><a id="downloadLink" onclick="exportF(this)">Export to excel</a></button> -->

			</div>	
		</div>   <!-- End of <div class="panel panel-default"> -->
		
			 
		
	</div>  
</div>

<script>
// function exportF(elem) {
//     var table = document.getElementById("book_info_table_div");
//     var html = table.innerHTML;
//     var url = 'data:application/vnd.ms-excel,' + escape(html); // Set your html table into url 
//     elem.setAttribute("href", url);
//     elem.setAttribute("download", "book_list.xls"); // Choose the file name
//     return false;
// }


function pdf_print()
    {
     var divContents = document.getElementById("book_info_table_div").innerHTML;
            var a = window.open('', '', 'height=500, width=500');
            a.document.write('<html>');
            a.document.write('<body > ');
            a.document.write(divContents);
            a.document.write('</body></html>');
            a.document.close();
            a.print();   
			load_page('book_report_details/book_report.php');	 
                  
    }

	function pdf_print_details()
    {
     var divContents = document.getElementById("overall_report_table_div").innerHTML;
            var a = window.open('', '', 'height=500, width=500');
            a.document.write('<html>');
            a.document.write('<body > ');
            a.document.write(divContents);
            a.document.write('</body></html>');
            a.document.close();
            a.print();  
			load_page('book_report_details/book_report.php');	 
                   
    }
</script>