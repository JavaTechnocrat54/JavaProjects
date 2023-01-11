<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="zxx">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>APANA BANK</title>
<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css2?family=Poppins:wght@300;600;700&display=swap"
	rel="stylesheet">
<!-- google fonts -->
<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style-starter.css">
<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script> -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<!--header-->
	<header id="site-header" class="fixed-top">
		<div class="container">
			<jsp:include page="design-side-header.jsp"></jsp:include>
		</div>
	</header>
	<!-- //header -->
	<!-- about breadcrumb -->
	<section class="w3l-about-breadcrumb text-left">
		<div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
			<div class="container">
				<h2 class="title">Customer Account</h2>
				<ul class="breadcrumbs-custom-path mt-2">
					<li><a href="#url">Customer</a></li>
					<li class="active"><span class="fa fa-arrow-right mx-2"
						aria-hidden="true"></span>Create Account</li>
				</ul>
			</div>
		</div>
	</section>
	<br>
	<br>
	<div class="container">
		<div class="panel panel-info shadow p-3 mb-5">
			<div class="panel-heading">Create Account</div>
			<div class="panel-body">
				<%
				String message = (String) session.getAttribute("success");
				if (message != null) {
					session.removeAttribute("success");
				%>
				<div class="alert alert-success" id="success">Request Send
					Successfully please Wait for Admin Confirmation</div>
				<%
				}
				%>
				<form action="CustomerAccount" method="post"
					enctype='multipart/form-data'>
					<div class="form-row">
						<%
						long customerId = DatabaseConnection.generateCustomerId();
						%>
						<div class="form-group col-md-6">
							<label for="customerId">Customer Account:</label> <input
								type="text" class="form-control" id="customerId"
								placeholder="Customer Id" name="customerId"
								value="<%=customerId%>" readonly>
						</div>
						<div class="form-group col-md-6"">
							<label for="cname">Full Name:</label> <input type="text"
								class="form-control" id="cname" placeholder="Full Name"
								name="name" required>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="text">Enter Aadhar ID:</label> <input type="text"
								class="form-control" id="text" placeholder="Email Id"
								name="aadhar">
						</div>
						<div class="form-group col-md-6">
							<label for="mobile">Enter PAN card ID:</label> <input type="text"
								class="form-control" id="mobile" placeholder="Mobile No"
								name="pan">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="email">Email Id:</label> <input type="email"
								class="form-control" id="email" placeholder="Email Id"
								name="email">
						</div>
						<div class="form-group col-md-6">
							<label for="mobile">Mobile No:</label> <input type="text"
								class="form-control" id="mobile" placeholder="Mobile No"
								name="mobile">
						</div>
					</div>
					<div class="form-group">
						<label for="mobile">Dob:</label> <input type="date"
							class="form-control" id="mobile" placeholder="Mobile No"
							name="dob">
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="gender">Select Gender:</label> <select
								class="form-control" id="gender" name="gender">
								<option>Male</option>
								<option>Female</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="mobile">Choose Photo:</label> <input type="file"
								class="form-control" id="mobile" name="img" maxlength="10">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="city">City:</label> <input type="text"
								class="form-control" id="city" placeholder="Enter City"
								name="city">
						</div>
						<div class="form-group col-md-6">
							<label for="state">State:</label> <input type="text"
								class="form-control" id="state" placeholder="Enter State"
								name="state">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="country">Country:</label> <input type="text"
								class="form-control" id="country" placeholder="Enter Country"
								name="country">
						</div>
						<div class="form-group col-md-6">
							<label for="pincode">Pincode:</label> <input type="text"
								class="form-control" id="pincode" placeholder="Enter Pincode"
								name="Pincode" required oninput="limitNumber(this)"
								maxlength="6">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="uname">Address:</label> <input type="text"
								class="form-control" id="uname" placeholder="Enter username"
								name="address">
						</div>
						<%
						String password = DatabaseConnection.generatePasswordString();
						System.out.println(password);
						%>
						<div class="form-group col-md-6">
							<label for="upass">Password:</label> <input type="text"
								class="form-control" id="upass" placeholder="Enter password"
								name="pass" value=" <%=password%>" readonly="readonly">
						</div>
					</div>
					<input type="submit" value="Create Account" class="btn btn-primary">
					<input type="reset" class="btn btn-danger" value="Cancel">
					<a href="customer-login.jsp">Click here to customer login.</a>
				</form>
			</div>
		</div>
	</div>
	<br>
	<!--/w3l-footer-29-main-->
	<jsp:include page="mainfooter.jsp"></jsp:include>
	<script>
		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
				document.getElementById("movetop").style.display = "block";
			} else {
				document.getElementById("movetop").style.display = "none";
			}
		}

		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
			document.body.scrollTop = 0;
			document.documentElement.scrollTop = 0;
		}
	</script>
	<!-- /move top -->
	</section>
	<!-- //footer-29 block -->
	<!-- disable body scroll which navbar is in active -->
	<script>
		$(function() {
			$('.navbar-toggler').click(function() {
				$('body').toggleClass('noscroll');
			})
		});
	</script>
	<!-- disable body scroll which navbar is in active -->

	<!-- Template JavaScript -->
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script src="assets/js/theme-change.js"></script>
	<!--/MENU-JS-->
	<script>
		$(window).on("scroll", function() {
			var scroll = $(window).scrollTop();

			if (scroll >= 80) {
				$("#site-header").addClass("nav-fixed");
			} else {
				$("#site-header").removeClass("nav-fixed");
			}
		});

		//Main navigation Active Class Add Remove
		$(".navbar-toggler").on("click", function() {
			$("header").toggleClass("active");
		});
		$(document).on("ready", function() {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
			$(window).on("resize", function() {
				if ($(window).width() > 991) {
					$("header").removeClass("active");
				}
			});
		});
	</script>
	<!--//MENU-JS-->
	<script src="assets/js/bootstrap.min.js"></script>


	<script type="text/javascript">
		$(function() {
			$('#success').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#danger').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#warning').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#info').delay(3000).show().fadeOut('slow');
		});
	</script>
</body>
</html>