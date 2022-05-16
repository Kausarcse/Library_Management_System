function Form_Validation()
{
		if(document.getElementById("book_name").value.trim()=="")
		{
      		alert("Please Provide book name");
      		document.getElementById("book_name").focus();
      		return false;
		}
        if(document.getElementById("isbn_number").value.trim()=="")
		{
      		alert("Please Provide isbn number");
      		document.getElementById("isbn_number").focus();
      		return false;
		}
        if(document.getElementById("category_name").value.trim()=="")
		{
      		alert("Please Provide category name");
      		document.getElementById("category_name").focus();
      		return false;
		}
        if(document.getElementById("author_name").value.trim()=="")
		{
      		alert("Please Provide author name");
      		document.getElementById("author_name").focus();
      		return false;
		}
		if(document.getElementById("location_name").value.trim()=="")
		{
      		alert("Please Provide location name");
      		document.getElementById("location_name").focus();
      		return false;
		}
		if(document.getElementById("book_quantity").value.trim()=="")
		{
      		alert("Please Provide book quantity");
      		document.getElementById("book_quantity").focus();
      		return false;
		}

}

