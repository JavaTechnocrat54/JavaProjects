<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.DatabaseConnection"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Employee Home</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="fontawesome/all.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">


</head>

<body>

	<jsp:include page="employee-header.jsp"></jsp:include>
	<br><br><br><br><br><br>
		<section class="inner-page">
			<div class="container">
				<%
				String employeeAccount = (String) session.getAttribute("Complain");
				if (employeeAccount != null) {
					session.removeAttribute("Complain");
				%>
				<div class="alert alert-info" id="info">Complain Send Successfully
					created successfully.</div>
				<%
				}
				%>

				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-warning shadow p-3 mb-5">
							<div class="panel-heading">Employee Complain</div>
							<div class="panel-body">
								<form action="EmployeeComplain" method="post" name="employeeForm">
									<div class="row">
										<%
										int EmployId = DatabaseConnection.generateCustomerId();
										%>
										<div class="form-group col-md-6">
											<label for="EmployeeId">Complain Id:</label> <input
												type="text" class="form-control" id="employeeId"
												placeholder="Employee Id" name="cId"
												value="<%=EmployId%>" readonly>
										</div>
										
										<div class="form-group col-md-6"">
											<label for="cname">Full Name:</label> <input type="text"
												class="form-control" id="cname" placeholder="Full Name"
												name="cname" value="<%=session.getAttribute("uname") %>" readonly="readonly">
										</div>
										
									</div>
									
									<div class="row">
										<div class="form-group col-md-6">
										<label for="pincode">Subject:</label> <input type="text"
												class="form-control" id="pincode"
												placeholder="Enter Subject" name="subject" required
												 maxlength="6">
											
										</div>
										<div class="form-group col-md-6">
											<label for="address">Address:</label>
											<textarea class="form-control" id="address"
												placeholder="Address" name="complain" required ></textarea>
										</div>
									</div>
									
									<input type="submit" value="Create Account"
										class="btn btn-primary"> <input type="reset"
										class="btn btn-danger" value="Cancel">
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
			</div>
		</section>
	<br>


	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>