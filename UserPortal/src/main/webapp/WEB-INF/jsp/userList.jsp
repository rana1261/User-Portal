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
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<!-- custom CSS -->
<link rel="stylesheet" href="css/userList.css">
<title>User List Page</title>

</head>
<body>
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
					aria-haspopup="true" aria-expanded="false"> Admin </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownMenuLink">
						<!--   <a class="dropdown-item" style="font-family: cursive;"href="#">Change Password</a>-->
						<a class="dropdown-item" style="font-family: cursive;"
							href="logout">Log Out</a>

					</div></li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2 border  border-dark px-0 "
				style="min-height: 550px;">

				<div class="border  border-dark border-right-0 border-left-0 p-2"
					style="max-width: 100%; height: 40px">

					<a href="userList" align="center"
						style="font-family: cursive; color: black; font-size: 13px;"><i>User
							List</i></a>

				</div>


			</div>

			<div class="col-md-10 border border-dark  px-0"
				style="min-height: 550px;">

				<div class="border border-dark border-right-0 border-left-0 p-3"
					style="max-width: 100%; min-height: 80px">
					<div class="row">

						<div class="col-md-8">
							<h4 style="font-family: cursive;">
								<i>User List</i>
							</h4>
						</div>

						<div class="col-md-4"
							style="font-family: cursive; font-size: 13px;">

							<div class="form-group d-flex justify-content-start">
								<button type="button"
									class="btn  btn-sm btn-outline-dark searchbtn " id="searchBtn">
									<i class="fas fa-search"></i>
								</button>

								<input type="search" class="form-control border border-dark"
									placeholder="Search" name="firstName" id="fname">
							</div>

						</div>

					</div>
				</div>


				<div class=" mx-auto table-responsive"
					style="height: auto; font-family: cursive; font-size: 13px;">

					<table class="table table-striped table-hover table-sm"
						id="tabletest">
						<thead class="thead-dark">
							<tr>
								<th>Name</th>
								<th>Age</th>
								<th>Email</th>
								<th>Phone</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${userlist}" var="user">
								<tr>
									<td>${user.firstName}</td>
									<td>${user.age}</td>
									<td>${user.email}</td>
									<td>${user.phone}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

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

	<script>
		$("#searchBtn").click(
				function(e) {
					var fname = $("#fname").val();

					//alert(fname);

					var formData = {
						"fname" : fname
					};

					var customerRow = "";
					$('#tabletest tbody').empty();
					$.ajax({

						url : "/search",
						type : "POST",
						dataType : 'json',
						data : formData,

						success : function(res) {
							//alert("res " + res);
							$.each(res, function(i, searchList) {

								customerRow +=

								'<tr>' + '<td>' + searchList.firstName
										+ '</td>' + '<td>' + searchList.age
										+ '</td>' + '<td>' + searchList.email
										+ '</td>' + '<td>' + searchList.phone
										+ '</td>'

								'</tr>';
							});

							$('#tabletest tbody').append(customerRow);
						}

					});

				});
	</script>
</body>
</html>