function Form_Validation()
{
		// if(document.getElementById("book_issue_date").value.trim()=="")
		// {
      	// 	alert("Please Provide issue date");
      	// 	document.getElementById("book_issue_date").focus();
      	// 	return false;
		// }
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
        // if(document.getElementById("required_qty").value.trim()=="")
		// {
      	// 	alert("Please Provide required book quantity");
      	// 	document.getElementById("required_qty").focus();
      	// 	return false;
		// }
		// if(document.getElementByName("check_box").value.trim()=="")
		// {
      	// 	alert("Please Provide required book quantity");
      	// 	document.getElementByName("check_box").focus();
      	// 	return false;
		// }
}

