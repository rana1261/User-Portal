<%
    session.setAttribute("email", null);
    session.invalidate();
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html xmlns:th="http://www.thymeleaf.org">
<html lang="en">
<head>
 
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login Page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <!-- custom CSS -->
    <link rel="stylesheet" href="css/loginStyle.css">
    

</head>

<body>

    <div class="container-fluid">
        <div class="m-3">
            <div class=" mx-auto  mt-5 " style="max-width:350px;height:auto">
                <i class=" d-flex justify-content-center fas fa-address-book fa-3x"></i>
                <h5 align="center" style="font-family: cursive;">Login Panel</h5>
            </div>
            <div class=" mx-auto  border border-dark  p-4" style="max-width:350px;height:auto">
            <p align="center" class="pt-1" style="font-family: cursive;color:red;">${msg}</p>
            <p align="center" class="pt-1" style="font-family: cursive;color:green;">${smsg}</p>
    
                <form action="verify" method="post">
                    <p align="center" style="font-family: cursive;">Email Address</p>
                    <input type="email" class="form-control form-control-sm border border-dark" name="email" id="email">

                    <p align="center" class="pt-2" style="font-family: cursive;">Password</p>
                    <input type="password" class="form-control form-control-sm border border-dark" name="password" id="password">

                    <div class="row pt-3 px-3 ">

                        <div class="col-md-6 pt-1 text-center">
                            <button type="submit" class="btn text-body btn-sm btn-outline-dark " id="login" style="font-family: cursive;">Login</button>
                        </div>

                        <div class="col-md-6  pt-1 text-center ">
                            <button type="button" class="btn text-body btn-sm btn-outline-dark " id="clear" style="font-family: cursive;">Clear</button>
                        </div>

                    </div>

                    <p align="center" class="pt-3">Are you new here?<span><a href="register" style="text-decoration: underline;">Register Now</a></span></p>

                </form>
            </div>

        </div>
        
        <div class="fixed-bottom bg-light" style="max-width:100%;height:50px"></div>
        
    </div>
    <!-- Optional JavaScript -->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <script>
    $(document).ready(function(){
    	
    $("#clear").click(function(){
        $('#email').val(''); 
        $('#password').val(''); 
    });
    

    
    });
    

    
    </script>
</body>

</html>