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
<link rel="stylesheet" href="css/profileStyle.css">
<title>Profile Page</title>
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

				<div class="border  border-dark border-right-0 border-left-0 p-2"
					style="max-width: 100%; height: 40px">

					<a href="profile" align="center"
						style="font-family: cursive; color: black; font-size: 13px;"><i>Profile
							Page</i></a>

				</div>

				<div class="border border-dark border-right-0 border-left-0 p-2"
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
						<b><i>User Profile</i></b>
					</h4>

				</div>


				<div class=" mx-auto   mt-5 p-2"
					style="max-width: 500px; height: auto">


					<div class=" row" style="font-family: cursive; font-size: 13px;">

						<div class="col-md-3">
							<label for="usr" style="font-family: cursive; font-size: 13px;">First
								Name</label>
						</div>
						<div class="col-md-1">
							<label for="usr" style="font-family: cursive;">:</label>
						</div>
						<div class="col-md-8">
							<p>
								<c:out value="${user.firstName}" />
							</p>
						</div>

					</div>



					<div class=" row" style="font-family: cursive; font-size: 13px;">

						<div class="col-md-3">
							<label for="usr" style="font-family: cursive; font-size: 13px;">Last
								Name</label>
						</div>
						<div class="col-md-1">
							<label for="usr" style="font-family: cursive;">:</label>
						</div>
						<div class="col-md-8">
							<p>
								<c:out value="${user.lastName}" />
							</p>
						</div>

					</div>

					<div class=" row" style="font-family: cursive; font-size: 13px;">

						<div class="col-md-3">
							<label for="usr" style="font-family: cursive; font-size: 13px;">Address</label>
						</div>
						<div class="col-md-1">
							<label for="usr" style="font-family: cursive;">:</label>
						</div>
						<div class="col-md-8">
							<p>
								<c:out value="${user.address}" />
							</p>
						</div>

					</div>

					<div class=" row" style="font-family: cursive; font-size: 13px;">

						<div class="col-md-3">
							<label for="usr" style="font-family: cursive; font-size: 13px;">Phone</label>
						</div>
						<div class="col-md-1">
							<label for="usr" style="font-family: cursive;">:</label>
						</div>
						<div class="col-md-8">
							<p>
								<c:out value="${user.phone}" />
							</p>
						</div>

					</div>



					<div class=" row" style="font-family: cursive; font-size: 13px;">

						<div class="col-md-3">
							<label for="usr" style="font-family: cursive; font-size: 13px;">Email</label>
						</div>
						<div class="col-md-1">
							<label for="usr" style="font-family: cursive;">:</label>
						</div>
						<div class="col-md-8">
							<p>
								<c:out value="${user.email}" />
							</p>
						</div>

					</div>

					<div class=" row" style="font-family: cursive; font-size: 13px;">

						<div class="col-md-3">
							<label for="usr" style="font-family: cursive; font-size: 13px;">Birthdate</label>
						</div>

						<div class="col-md-1">
							<label for="usr" style="font-family: cursive;">:</label>
						</div>

						<div class="col-md-8">
							<p>
								<c:out value="${user.birthdate}" />
							</p>
						</div>

					</div>


					<p></p>

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
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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

</body>
</html>