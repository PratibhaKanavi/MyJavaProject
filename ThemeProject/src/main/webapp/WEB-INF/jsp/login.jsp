<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin - Start Bootstrap Template</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/min.1..6.js"></script>
</head>

<!--<script type="text/javascript">

$(document).ready(function(){
	$("#login").click(function(){
	var email = $("#exampleInputEmail1").val();
	var password = $("#exampleInputPassword1").val();
	// Checking for blank fields.
	if( email =='' || password ==''){
	alert("Please fill all fields...!!!!!!");
	}else {
		$.ajax({
			url : "loginapp.html",
			type : "get",
			data:{
				email : email,
				password : password
				},
				
				success: function(response){
					 alert("Login Sucessfull..."); 
					 window.location = "test.html";
				 },
				 error: function(e){
					 alert("try again!!!!!"); 
					          window.location = "login.html";
					         }
			});
	}
	
	});
	});



 $(document).ready(function(){
	$("#login").click(function() {
	var email = $("#exampleInputEmail1").val();
	var pwd = $("#exampleInputPassword1").val();
	if(email==''|| pwd==''){
		alert("Please enter the Username and Password ");
	}
	else{
		
		$.ajax({
			url : "loginapp.html",
			type : "get",
			data:{
				email : email,
				password : pwd
				},
				success: function(response){
					 alert("Login Sucessfull..."); 
					 window.location = "test.html";
				 },
				 error: function(e){
					 alert("try again!!!!!"); 
					          window.location = "login.html";
					         }
			});
	}
	
	});
}); 
</script> -->

<body style="background-image: url('img/Arcadia-Power-wind-farm-2.jpg');">
<div>
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form action="loginapp.html" method="post">
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input class="form-control" name="email1" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" pattern="[^ @]*@[^ @]*" placeholder="Enter email">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control" name="pwd" id="exampleInputPassword1" type="password" placeholder="Password">
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember Password</label>
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-block" id="login">Login</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="register.html">Register an Account</a>
          <a class="d-block small" href="forgotpassword.html">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  
  </div>
  
  <div>
  
  
  </div>
  
  
  
  
  
  
  
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
