

function Form_Validation()
{
		if(document.getElementById("author_name").value.trim()=="")
		{
      		alert("Please Provide author");
      		document.getElementById("author_name").focus();
      		return false;
		}

}

