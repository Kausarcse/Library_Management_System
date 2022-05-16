
function Form_Validation()
{
		if(document.getElementById("department_name").value.trim()=="")
		{
      		alert("Please Provide department");
      		document.getElementById("department_name").focus();
      		return false;
		}

}

