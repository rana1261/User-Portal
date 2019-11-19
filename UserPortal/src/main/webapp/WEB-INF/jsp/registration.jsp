<%
session.setMaxInactiveInterval(2);
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<!-- custom CSS -->
<link rel="stylesheet" href="css/registrationStyle.css">

<title>Registration Page</title>
</head>

<body>
	<div class="container-fluid">
		<div class="m-3 mb-5">

			<div class=" mx-auto  mt-4 " style="max-width: 350px; height: auto">
				<i class=" d-flex justify-content-center fas fa-address-book fa-3x"></i>
				<h5 align="center" style="font-family: cursive;">Registration
					Panel</h5>
			</div>

			<div class=" mx-auto  border border-dark  p-2"
				style="max-width: 350px; height: auto">

				<form action="registerSave" method="post">

					<div class="form-group row">

						<div class="col-md-4">
							<label for="usr" style="font-family: cursive;">First Name</label>
						</div>

						<div class="col-md-8">
							<input type="text"
								class="form-control form-control-sm border border-dark"
								 name="firstName" required>
						</div>

					</div>

					<div class="form-group row">

						<div class="col-md-4">
							<label for="usr" style="font-family: cursive;">Last Name</label>
						</div>

						<div class="col-md-8">
							<input type="text"
								class="form-control form-control-sm border border-dark"
								 name="lastName" required>
						</div>

					</div>

					<div class="form-group row">

						<div class="col-md-4">
							<label for="usr" style="font-family: cursive;">Age</label>
						</div>

						<div class="col-md-8">
							<input type="number"
								class="form-control form-control-sm border border-dark" name="age" required>
						</div>

					</div>

					<div class="form-group row">

						<div class="col-md-4">
							<label for="usr" style="font-family: cursive;">Address</label>
						</div>

						<div class="col-md-8">
							<input type="text"
								class="form-control form-control-sm border border-dark"
								 name="address" required>
						</div>

					</div>

					<div class="form-group row">

						<div class="col-md-4">
							<label for="usr" style="font-family: cursive;">Phone</label>
						</div>

						<div class="col-md-8">
							<input type="tel"
								class="form-control form-control-sm border border-dark"
								 name="phone" required>
						</div>

					</div>

					<div class="form-group row">

						<div class="col-md-4">
							<label for="usr" style="font-family: cursive;">Email</label>
							
						</div>

						<div class="col-md-8">
							<input type="email"
								class="form-control form-control-sm border border-dark"
								 name="email" id="email" required>
								<span></span>
						</div>

					</div>

					<div class="form-group row">

						<div class="col-md-4">
							<label for="usr" style="font-family: cursive;">Birthdate</label>
						</div>

						<div class="col-md-8">
							<div class="d-flex justify-content-end">
								<input type="date"
									class="form-control form-control-sm border border-dark"
									 name="bdate" required> <i class="fas fa-calendar-alt fa-2x icon "></i>
							</div>
						</div>

					</div>

					<div class="form-group row">

						<div class="col-md-4">
							<label for="usr" style="font-family: cursive;">Password</label>
						</div>

						<div class="col-md-8">
							<input type="password"
								class="form-control form-control-sm border border-dark"
								 name="password" required>
						</div>

					</div>

					<div class="row pt-1 px-5 ">

						<div class="col-md-6 pt-1 text-center">
							<button type="submit"
								class="btn text-body btn-sm btn-outline-dark " 
								style="font-family: cursive;">Register</button>
						</div>

						<div class="col-md-6  pt-1 text-center ">
							<button type="button"
								class="btn text-body btn-sm btn-outline-dark "
								style="font-family: cursive;" onclick="location.href='/'">
								Cancel</button>
						</div>

					</div>

				</form>

			</div>
		</div>
       
		<div class="fixed-bottom bg-light mt-5"
			style="max-width: 100%; height: 50px"></div>




	</div>
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
	
	<script type="text/javascript">
    var msg ="<%=session.getAttribute("alertMsg")%>";
    var emailmsg ="<%=session.getAttribute("emaiAlert")%>";
    if(msg=='sucess'){
    	//alert("Data save Successfully");
    	swal("Data save Successfully");
    }
    if(msg=='fail'){
    	//alert("Data not save Successfully");
    	swal("Data not save Successfully");
    }
    if(emailmsg=='taken'){
    	//alert("We can't save your Data. this email already exist in Database");
    	swal("We can't save your Data", "this email already exist in Database");
    }
    </script>
 
	<script>
		$(document).ready(function() {

			
			
			
<%------------------------------------------------- Email checking for availability--------------------------------------------------%>
			var email_state = false;
			
			$("#email").on('blur', function() {

				var email = $('#email').val();
				if (email == '') {
					email_state = false;
					return;
				}//end if

				$.ajax({
					url : 'emailCheck',
					type : 'post',
					data : {
						'email' : email,
					},
					success : function(response) {
						if (response == 'taken') {
							email_state = false;
							//alert('sorry ... email already taken');
					          $('#email').removeClass("border border-dark");
					          $('#email').parent().addClass("form_error");
					          $('#email').siblings("span").text('Sorry Email already taken');

						} else if (response == 'not_taken') {
							email_state = true;
							//alert('Email available');
					      	  $('#email').removeClass("border border-dark");
					      	  $('#email').parent().addClass("form_success");
					      	  $('#email').siblings("span").text('Email available');

						}

					}//end success

				});//end ajax

			});//end email on
			
		});//end document ready
		
 
	</script>


</body>

</html>