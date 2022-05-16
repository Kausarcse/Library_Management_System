function Form_Validation()
{
        // if(document.getElementById("user_id").value.trim()=="")
		// {
      	// 	alert("Please Provide user id");
      	// 	document.getElementById("user_id").focus();
      	// 	return false;
		// }
        if(document.getElementById("book_name").value.trim()=="")
		{
      		alert("Please Provide book name");
      		document.getElementById("book_name").focus();
      		return false;
		}
		else if(document.querySelector( 'input[name="check_box_data"]:checked') == null)
		{
      		alert("Please checked any book list.");
      		return false;
		}
		
}

