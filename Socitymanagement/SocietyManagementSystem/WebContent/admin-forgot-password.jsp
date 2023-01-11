<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Society Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="bootstrap/fonts/icomoon/style.css">
<link rel="stylesheet" href="bootstrap/css/owl.carousel.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<div class="half">
		<div class="bg order-1 order-md-2"
			style="background-image: url('bootstrap/images/1.png');"></div>
		<div class="contents order-2 order-md-1">
			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-6">
						<div class="form-block">
							<div class="text-center mb-5">
								<h3>
									Forgot Admin <strong>Password</strong>
								</h3>
							</div>
							<form action="admin-forgot-password-show.jsp" method="post">
								<div class="form-group first">
									<label for="forgotPassword">Enter Email Id OR User Name</label> <input type="text"
										class="form-control" placeholder="Email Id OR User Name"
										name="forgotPassword">
								</div>
								<div class="d-sm-flex mb-5 align-items-center">
									<label class="control mb-3 mb-sm-0"><span
										class="ml-auto"><a href="index.jsp" class="forgot-pass">Home</a></span>
										<div class="control__indicator"></div>
								</div>

								<input type="submit" value="Log In"
									class="btn btn-block btn-primary">

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/js/popper.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/main.js"></script>
</body>
</html>