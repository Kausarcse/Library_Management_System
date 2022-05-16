<?php
session_start();
require_once("login/db_session_chk.php");

$user_name=$_SESSION['user_name'];
$user_id=$_SESSION['user_id'];
$user_type=$_SESSION['user_type'];
$select_sql_for_user="SELECT * FROM `user_login` 
						WHERE `user_name`='$user_name'
							and `user_id` = '$user_id'
							and `user_type` = '$user_type'";
							
$result= mysqli_query($con, $select_sql_for_user) or die(mysqli_error($con));
$row=mysqli_fetch_assoc($result);
?>

<style>
.sub_menu   /* This is for Sub Menu Button Styling */
{
	display:block;
	margin:1px;
	width:90%;
	
	background-color: #2B579A; 
	color:#FFFFFF; 
	border-style: dotted;
	border-color: #2B579A; 
	margin-top:2px;

}


</style>

<script>

	function change_book_list_button() 
	{
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#add_department').css('background', 'none');
		$('#add_category').css('background', 'none');
		$('#add_author').css('background', 'none');
		$('#add_book').css('background', 'none');
		$('#book_list').css('background', 'gray');
		$('#add_issue').css('background', 'none');
		$('#issue_list').css('background', 'none');
		$('#add_return').css('background', 'none');
		$('#return_list').css('background', 'none');
		$('#dashboard_details').css('background', 'none');

		$('#add_location').css('background', 'none');
		load_page('book_details/book_list.php');
	}
	function change_add_issue_button() 
	{
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#add_department').css('background', 'none');
		$('#add_category').css('background', 'none');
		$('#add_author').css('background', 'none');
		$('#add_book').css('background', 'none');
		$('#book_list').css('background', 'none');
		$('#add_issue').css('background', 'gray');
		$('#issue_list').css('background', 'none');
		$('#add_return').css('background', 'none');
		$('#return_list').css('background', 'none');
		$('#dashboard_details').css('background', 'none');

		$('#add_location').css('background', 'none');
		load_page('issue_details/add_issue.php');
	}

	function change_add_return_button() 
	{
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#add_department').css('background', 'none');
		$('#add_category').css('background', 'none');
		$('#add_author').css('background', 'none');
		$('#add_book').css('background', 'none');
		$('#book_list').css('background', 'none');
		$('#add_issue').css('background', 'none');
		$('#issue_list').css('background', 'none');
		$('#add_return').css('background', 'gray');
		$('#return_list').css('background', 'none');
		$('#dashboard_details').css('background', 'none');

		$('#add_location').css('background', 'none');
		load_page('return_details/add_return.php');
	}

	function change_create_dashboard_button_color() 
	{
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#add_department').css('background', 'none');
		$('#add_category').css('background', 'none');
		$('#add_author').css('background', 'none');
		$('#add_book').css('background', 'none');
		$('#book_list').css('background', 'none');
		$('#add_issue').css('background', 'none');
		$('#issue_list').css('background', 'none');
		$('#add_return').css('background', 'none');
		$('#return_list').css('background', 'none');
		$('#dashboard_details').css('background', 'gray');
		$('#add_location').css('background', 'none');

		load_page('dashboard_details/dashboard.php');
	}

	function change_issue_list_button() 
	{
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#add_department').css('background', 'none');
		$('#add_category').css('background', 'none');
		$('#add_author').css('background', 'none');
		$('#add_book').css('background', 'none');
		$('#book_list').css('background', 'none');
		$('#add_issue').css('background', 'none');
		$('#issue_list').css('background', 'gray');
		$('#add_return').css('background', 'none');
		$('#return_list').css('background', 'none');
		$('#dashboard_details').css('background', 'none');
		$('#add_location').css('background', 'none');

		load_page('issue_details/issue_list.php');
	}

	function change_return_list_button() 
	{
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#add_department').css('background', 'none');
		$('#add_category').css('background', 'none');
		$('#add_author').css('background', 'none');
		$('#add_book').css('background', 'none');
		$('#book_list').css('background', 'none');
		$('#add_issue').css('background', 'none');
		$('#issue_list').css('background', 'none');
		$('#add_return').css('background', 'none');
		$('#return_list').css('background', 'gray');
		$('#dashboard_details').css('background', 'none');
	
		$('#add_location').css('background', 'none');
		load_page('return_details/return_list.php');
	}
	
			
</script>
<div class="col-sm-3 col-md-3 col-lg-3" style="background-color: #2B579A; min-height:100%; width: 15%;">					
									
	<h3>
		<img src="img/beprc_logo.png" style="width: 30px; height:30px; margin-bottom: 4px; background: #ffffff;" class="img-rounded"/>
		<span class="text-primary" style="color:#FFFFFF; font-size: 20px;"> Library Management System</span>
	</h3>
								
	<!-- <img src="img/8571-1.JPG" style="width: 30px; height:30px; margin-bottom: 4px; background: #ffffff;" class="img-circle" alt="100x100"> -->
	<img src="img/<?php echo $row['profile_picture'] ?>" alt="..." class="img-circle profile_img" style="width: 30px; height:30px; margin-bottom: 4px; background: #ffffff;">

	<span class="text-primary" style="color:#FFFFFF; margin-left:5px;">Welcome, <?php echo $user_name;?></span>
	<br/>
	<span class="text-primary" style="color:#FFFFFF; margin-left:5px;"><?php echo $user_type;?> View</span>

  <!-- Add All Your Left Side Menu=>Submenu From Here in Accordion Menu -->
									
	<div id="accordion" class="accordion_menu">

		<!-- <h3 style="font-size: 13px; color:#FFFFFF; background:none;">DASHBOARD</h3>
		<div style="padding-left:7px;">
			<button class="sub_menu panel text-left"  onclick="change_create_dashboard_button_color()" id='dashboard_details'><span  style="font-size: 11px;" >DASHBOARD</span></button>
		</div> -->

		<h3 style="font-size: 13px; color:#FFFFFF; background:none;">BOOK DETAILS</h3>
		<div style="padding-left:7px;">
			<button class="sub_menu panel text-left" onclick="change_book_list_button()" id="book_list"><span style="font-size: 11px;">BOOK LIST</span></button>
		 </div> 

		 <h3 style="font-size: 13px; color:#FFFFFF; background:none;">ISSUE BOOKS</h3>
		<div style="padding-left:7px;">
			<button class="sub_menu panel text-left" onclick="change_add_issue_button()" id="add_issue"><span style="font-size: 11px;">ISSUE A NEW BOOK</span></button>
			<button class="sub_menu panel text-left" onclick="change_issue_list_button()" id="issue_list"><span style="font-size: 11px;">Issue Book List</span></button>
 
		</div>
		 
		 <h3 style="font-size: 13px; color:#FFFFFF; background:none;">RETURN BOOKS</h3>
		<div style="padding-left:7px;">
			<button class="sub_menu panel text-left" onclick="change_add_return_button()" id="add_return"><span style="font-size: 11px;">RETURN A NEW BOOK</span></button>
			<button class="sub_menu panel text-left" onclick="change_return_list_button()" id="return_list"><span style="font-size: 11px;">Return Book List</span></button>
 
		</div>

	</div> <!-- End of <div id="accordion"> -->
</div> <!--End of <div class="col-sm-3 col-md-3 col-lg-3" style="background-color:#add8e6; height:100%;"> -->
                
		