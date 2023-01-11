<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Society Management System</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="bootstrap/fonts/icomoon/style.css">
<link rel="stylesheet" href="bootstrap/css/owl.carousel.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<div class="half">
		<div class="bg order-1 order-md-2"
			style="background-image: url('bootstrap/images/2.jpg');"></div>
		<div class="contents order-2 order-md-1">
			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-6">
						<div class="form-block">
							<div class="text-center mb-5">
								<h3>
									Login to <strong>Member Login</strong>
								</h3>
							</div>
							<%
								String credential = (String) session.getAttribute("invalid");
								if (credential != null) {
									session.removeAttribute("invalid");
							%>
							<div class="alert alert-danger" id="danger">You have enter
								invalid details.</div>
							<%
								}
							%>
							<form action="UserLogin" method="post">
								<div class="form-group first">
									<label for="mobile">Mobile No</label> <input type="text"
										class="form-control" placeholder="Mobile No" name="mobile">
								</div>
								<div class="form-group first">
									<label for="block">Block</label> <select class="form-control"
										id="block" name="block" placeholder="Block">
										<option>Choose Block</option>
										<option>A</option>
										<option>B</option>
										<option>C</option>
										<option>D</option>
										<option>E</option>
										<option>F</option>
										<option>G</option>
										<option>H</option>
										<option>I</option>
										<option>J</option>
										<option>K</option>
										<option>L</option>
										<option>M</option>
										<option>N</option>
										<option>O</option>
										<option>P</option>
										<option>Q</option>
										<option>R</option>
										<option>S</option>
										<option>T</option>
										<option>U</option>
										<option>V</option>
										<option>W</option>
										<option>X</option>
										<option>Y</option>
										<option>Z</option>
									</select>
								</div>
								<div class="form-group first">
									<label for="flatNo">Flat No:</label> <input type="text"
										class="form-control" id="flatNo" name="flatNo"
										placeholder="Flat No">

								</div>
								<div class="d-sm-flex mb-5 align-items-center">
									<label class="control mb-3 mb-sm-0"><span
										class="ml-auto"><a href="index.jsp" class="forgot-pass">Home</a></span>
								</div>
								<input type="submit" value="Log In"
									class="btn btn-block btn-info">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
	<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/js/popper.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/main.js"></script>
</body>
</html>