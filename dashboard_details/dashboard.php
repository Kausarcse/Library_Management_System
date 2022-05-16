<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


?>

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
<div class="col-sm-12 col-md-12 col-lg-12">

		<div class="panel panel-default"> 
 			<div id="add_issue_name_form">
				<!-- <div class="panel-heading" style="color:#191970;"><b><a onclick="load_page('dashboard_details/dashboard.php')">Admin Dashboard</a></b></div>  -->

                <nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					     <li class="breadcrumb-item"><b><a onclick="load_page('dashboard_details/dashboard.php')">Admin Dashboard</a></b></li>
					  </ol>
				 </nav>

				<form class="form-horizontal" action="" style="margin-top:10px;" name="add_issue_form" id="add_issue_form">

                   hello

				</form>
			</div>
	
</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->
