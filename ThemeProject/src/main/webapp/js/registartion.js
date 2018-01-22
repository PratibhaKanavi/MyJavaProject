 $(document).ready(function() {
	$("#register").click(function() {
	var fname = $("#exampleInputName").val();
	var lname = $("#exampleInputLastName").val();
	var email = $("#exampleInputEmail1").val();
	var password = $("#exampleInputPassword1").val();
	var cpassword = $("#exampleConfirmPassword").val();
	if (fname == '' || lname == '' || email == '' || password == '' || cpassword == '') {
	alert("Please fill all fields...!!!!!!");
	} else if ((password.length) < 8) {
	alert("Password should atleast 8 character in length...!!!!!!");
	} else if (!(password).match(cpassword)) {
	alert("Your passwords don't match. Try again?");
	} else {
	$.ajax({
		url : "saveregister.html",
		type : "post",
		data:{
			fname : fname,
			lname : lname,
			email : email,
			password : password,
			confirmpwd : cpassword
		},
		
		 success: function(results){
			 alert("You have Successfully Registered....."); 
			 window.location = "login.html";
		 },
		 error: function(e){
			          alert('Error: ' + e);
			
			         }
	});
	}
	});
	});