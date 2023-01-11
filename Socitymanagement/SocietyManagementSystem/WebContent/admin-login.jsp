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
									Login to <strong>Admin Login</strong>
								</h3>
							</div>
							<%
								String credential = (String) session.getAttribute("credential");
								if (credential != null) {
								session.removeAttribute("credential");
							%>
								<div class="alert alert-danger" id="danger">You have enter
									wrong credentials.</div>
							<%
								}
							%>
						
							<%
								String captchaCode = (String) session.getAttribute("verificationCode");
								if (captchaCode != null) {
								session.removeAttribute("verificationCode");
							%>
								<div class="alert alert-info" id="info">You have enter wrong verification code.</div>
							<%
								}
							%>
							<form action="AdminLogin" method="post">
								<div class="form-group first">
									<label for="uname">User Name</label> <input type="text"
										class="form-control" placeholder="User Name"
										name="uname">
								</div>
								<div class="form-group last mb-3">
									<label for="upass">Password</label> <input type="password"
										class="form-control" placeholder="Your Password" name="upass">
								</div>
								<div class="form-group">
									<label for="vercode">Enter Verification Code</label> <input
										type="text" class="form-control"
										placeholder="Verification Code" name="vercode">
								</div>
								<%
									String captcha = null;
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select captcha from tblcaptcha");
									if (resultset.next()) {
										captcha = resultset.getString(1);
									}
								%>
								<div class="form-group">
									<label for="">Verification Code</label> <input type="text"
										class="form-control" value="<%=captcha%>" readonly>
								</div>
								<div class="d-sm-flex mb-5 align-items-center">
									<label class="control mb-3 mb-sm-0"><span
										class="ml-auto"><a href="index.jsp" class="forgot-pass">Home</a></span>
										<div class="control__indicator"></div> </label> <span class="ml-auto"><a
										href="admin-forgot-password.jsp" class="forgot-pass">Forgot Password</a></span>
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
	<script type="text/javascript">
		$(function() {
			$('#danger').delay(3000).show().fadeOut('slow');
		});
	
		$(function() {
			$('#success').delay(3000).show().fadeOut('slow');
		});
		
		$(function() {
			$('#info').delay(3000).show().fadeOut('slow');
		});
	</script>
</body>
</html>