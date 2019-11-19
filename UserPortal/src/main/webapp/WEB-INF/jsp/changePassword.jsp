<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- custom CSS -->
<link rel="stylesheet" href="css/changePasswordStyle.css">
<title>Change Password Page</title>
</head>
<body >
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" style="font-family: cursive;" href="#"><i>Navigation</i></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active dropdown"><a
					class="nav-link dropdown-toggle" style="font-family: cursive;"
					href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> <c:out
							value="${user.firstName}" /></a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" style="font-family: cursive;"
							href="changePassword">Change Password</a> <a
							class="dropdown-item" style="font-family: cursive;" href="logout">Log
							Out</a>

					</div></li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2 border  border-dark px-0 "
				style="min-height: 550px;">

				<div class="border  border-dark border-right-0 border-left-0 p-2 btnHover"
					style="max-width: 100%; height: 40px">

					<a href="profile" align="center"
						style="font-family: cursive; color: black; font-size: 13px;"><i>Profile
							Page</i></a>

				</div>

				<div class="border border-dark border-right-0 border-left-0 p-2" btnHover
					style="max-width: 100%; height: 40px">

					<a href="changePassword" align="center"
						style="font-family: cursive; color: black; font-size: 13px;"><i>Change
							Password</i></a>

				</div>


			</div>

			<div class="col-md-10 border border-dark  px-0"
				style="min-height: 550px;">

				<div class="border border-dark border-right-0 border-left-0 p-4"
					style="max-width: 100%; height: 80px">

					<h4 align="center" style="font-family: cursive;">
						<b><i>Change Password</i></b>
					</h4>

				</div>


				<div class=" mx-auto   mt-5 p-2"
					style="max-width: 450px; height: auto">

					<form >

						<div class="form-group row"
							style="font-family: cursive; font-size: 13px;">

							<div class="col-md-4">
								<label for="usr" style="font-family: cursive;">Previous
									Password:</label>
							</div>

							<div class="col-md-8">
								<input type="text"
									class="form-control form-control-sm border border-dark" name="oldPassword"
									id="oldPassword">
							</div>

						</div>

						<div class="form-group row"
							style="font-family: cursive; font-size: 13px;">

							<div class="col-md-4">
								<label for="usr" style="font-family: cursive;">New
									Password:</label>
							</div>

							<div class="col-md-8">
								<input type="text"
									class="form-control form-control-sm border border-dark" name="newPassword"
									id="newPassword">
							</div>

						</div>

						<div class="form-group row"
							style="font-family: cursive; font-size: 13px;">

							<div class="col-md-4">
								<label for="usr" style="font-family: cursive;">Confirm
									Password:</label>
							</div>

							<div class="col-md-8">
								<input type="text"
									class="form-control form-control-sm border border-dark"
									id="conPassword" name="conPassword">
							</div>

						</div>


							<input type="text" hidden
									class="form-control form-control-sm border border-dark"
									id="email" name="email"value="<c:out value="${user.email}" />"
									>
									
									
						<div class="row pt-1 px-5 ">

							<div class="col-md-6 pt-1 text-center">
								<button type="button"
									class="btn text-body btn-sm btn-outline-dark " id="changebtn"
									style="font-family: cursive;">Change Password</button>
							</div>

							<div class="col-md-6  pt-1 text-center ">
								<button type="button"
									class="btn text-body btn-sm btn-outline-dark "
									style="font-family: cursive;" onclick="location.href='profile'">Cancel</button>
							</div>

						</div>

					</form>


				</div>

			</div>

		</div>


	</div>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

		if (session.getAttribute("email") == null) {
			response.sendRedirect("logout");
		}
	%>
	<div class=" bg-light " style="max-width: 100%; height: 50px"></div>
	<!-- Optional JavaScript -->	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script>
	$(document).ready(function() {
	
		$('#changebtn').click(
				function(){
				
					var oldPassword=$('#oldPassword').val();
					var newPassword=$('#newPassword').val();
					var conPassword=$('#conPassword').val();
					var email=$('#email').val();
					
					//alert(bdate);
					
					//alert("name1 " + password);
					
					var formData={
							"oldPassword" :oldPassword,
							"newPassword" :newPassword,
							"conPassword" :conPassword,
							"email" :email
					};
					
					//alert("1");
					$.ajax({
						
						url: "cpassword",
						type : "POST",
		                dataType : 'json',
		            	data : formData,
		            	
		            	success: function(res) {
		            		//alert("res " + res);
		            		
		            		if (res==1) {
		            			
		            			//alert(" Data Saved successfully");
		            			swal("Password change successfully");
		            			
		            		}
		            		
		            		else {
		            			
		            			//alert(" Data Not saved successfully");
		            			swal("Password not change successfully");
		            		}
		            	}
					
					});
					
					
				});
	});//document ready;
	
	</script>

	
</body>
</html>