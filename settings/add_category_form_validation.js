

function Form_Validation()
{
		if(document.getElementById("category_name").value.trim()=="")
		{
      		alert("Please Provide category");
      		document.getElementById("category_name").focus();
      		return false;
		}

}

