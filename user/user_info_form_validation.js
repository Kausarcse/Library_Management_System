

function User_Info_Form_Validation()
{
	const filter_email = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

	const filter_password = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$/;

		if(document.getElementById("user_name").value.trim()=="")
		{
      		alert("Please Provide Employee Name");
      		document.getElementById("user_name").focus();
      		return false;
		}
		else if(document.getElementById("user_id").value.trim()=="")
		{
      		alert("Please Provide Employee Id");
      		document.getElementById("user_id").focus();
      		return false;
		}
		else if(document.getElementById("email").value.trim()=="")
		{
      		alert("Please Provide Email Address");
      		document.getElementById("email").focus();
      		return false;
		}
		else if(!filter_email.test(document.getElementById("email").value))
		{
			alert('Please provide a valid email address.');
			document.getElementById("email").focus();
			return false;
		}
		else if(document.getElementById("contact_no").value.trim()=="")
		{
      		alert("Please Provide Contact No");
      		document.getElementById("contact_no").focus();
      		return false;
		}
		else if(document.getElementById("contact_no").value.split('',1) != 0)
		{
			alert('Please provide correct phone number.');
			document.getElementById('contact_no').focus();
			return false;
		}
		else if(document.getElementById("contact_no").value.length != 11)
		{
			alert('Please provide correct phone number.');
			document.getElementById('contact_no').focus();
			return false;
		}
		else if(document.getElementById("national_id_card").value.trim()=="")
		{
      		alert("Please Provide National id Number");
      		document.getElementById("national_id_card").focus();
      		return false;
		}
		else if(document.querySelector( 'input[name="gender"]:checked') == null)
		{
      		alert("Please Provide gender");
      		return false;
		}
		else if(document.getElementById("date_of_birth").value.trim()=="")
		{
      		alert("Please Provide Date of Birth");
      		document.getElementById("date_of_birth").focus();
      		return false;
		}
		else if(document.getElementById("department").value=="select")
		{
      		alert("Please Provide Department Name");
      		document.getElementById("department").focus();
      		return false;
		}
		else if(document.getElementById("designation").value=="select")
		{
      		alert("Please Select Designation");
      		document.getElementById("designation").focus();
      		return false;
		}
		else if(document.getElementById("user_type").value=="select")
		{
      		alert("Please Select User Type");
      		document.getElementById("user_type").focus();
      		return false;
		}
		else if(document.querySelector( 'input[name="status"]:checked') == null)
		{
      		alert("Please Provide status");
      		return false;
		}
		else if(document.getElementById("user_type").value=="select")
		{
      		alert("Please Select User Type");
      		document.getElementById("user_type").focus();
      		return false;
		}
		else if(document.getElementById("password").value.trim()=="")
		{
      		alert("Please Provide Password");
      		document.getElementById("password").focus();
      		return false;
		}
		else if(!filter_password.test(document.getElementById("password").value))
		{
			alert('Please provide password with atleast one number, one special character, and minimum 8 digit and maximum 20 digit.');
			document.getElementById("password").focus();
			return false;
		}
		else if(document.getElementById("confirm_password").value.trim()=="")
		{
      		alert("Please Re-type Password");
      		document.getElementById("confirm_password").focus();
      		return false;
		}
		else if(document.getElementById("confirm_password").value.trim() != document.getElementById("password").value.trim())
		{
      		alert("Password does not matched.");
      		document.getElementById("confirm_password").focus();
      		return false;
		}
		else if(document.getElementById("profile_picture").value.trim()=="")
		{
      		alert("Please Provide Your Profile picture");
      		document.getElementById("profile_picture").focus();
      		return false;
		}

		

}

// validatePassword(password) {
// 	const re = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()+=-\?;,./{}|\":<>\[\]\\\' ~_]).{8,}/
// 	return re.test(password);
// }

// function Validate_Email()
// {
// 	var email = document.getElementById('email');
// 	var filter = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
// 	if (!filter.test(email.value)) 
// 	{
// 		alert('Please provide a valid email address.');
// 		email.focus();
// 		return false;
// 	}

// }

// function Validate_Contact_number()
// {
// 	var contact_no = document.getElementById('contact_no').value;

// 	if(contact_no.split('',1) != 0)
// 	{
// 		alert('Please provide correct phone number');
// 		document.getElementById('contact_no').focus();
// 		return false;
// 	}
// 	else if(contact_no.split('',2) != 1)
// 	{
// 		alert('Please provide correct phone number');
// 		document.getElementById('contact_no').focus();
// 		return false;
// 	}
// 	else if(contact_no.length != 11)
// 	{
// 		alert('Please provide correct phone number');
// 		document.getElementById('contact_no').focus();
// 		return false;
// 	}

// }



