
function Form_Validation()
{
		if(document.getElementById("location_name").value.trim()=="")
		{
      		alert("Please Provide location");
      		document.getElementById("location_name").focus();
      		return false;
		}

}

