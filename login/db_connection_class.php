<?php

class DB_Connection_Class{

	 function connection()
	 {
		   global $con;
		//  $con = mysqli_connect("localhost","root","","lms");

		   $con = mysqli_connect("localhost","root","","library_management_system");

		   /*$con = mysqli_connect("localhost","root","O@s@t708s\$H\$a461","znz_fabrics");*/
		
		  if (!$con)
		  {			
				die('Could not connect: ' . mysqli_error($con));
		  }
		 
		  mysqli_select_db($con, 'encoding_test');
		  mysqli_set_charset($con,'utf8');
		  
/*		  mysql_select_db("inventory_final_development", $con);
*/	  
	 }
 
 
   function disconnection()
   {
		global $con;
		mysqli_close($con);
   }
}
?>
