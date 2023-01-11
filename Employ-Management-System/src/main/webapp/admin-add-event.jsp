<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin Dashboard</title>
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

	<jsp:include page="admin-header.jsp"></jsp:include>
	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<h2>Admin Dashboard</h2>
					<ol>
						<li><a href="admin-dashbord.jsp">Home</a></li>
						<li>Admin/AddEvents</li>
					</ol>
				</div>

			</div>
		</section>
		<!-- End Breadcrumbs -->

		<section class="inner-page">
			<div class="container">
				<%
				String EventsAccount = (String) session.getAttribute("Events-account");
				if (EventsAccount != null) {
					session.removeAttribute("Events-account");
				%>
				<div class="alert alert-info" id="info">Events add
					successfully.</div>
				<%
				}
				%>

				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-warning shadow p-3 mb-5">
							<div class="panel-heading">Events Account</div>
							<div class="panel-body">
								<form action="EventsAccount" method="post" name="EventsForm">
									<div class="row">
										<%
										int EventsId = DatabaseConnection.generateCustomerId();
										%>
										<div class="form-group col-md-6">
											<label for="EventsId">Events Id:</label> <input type="text"
												class="form-control" id="EventsId" placeholder="Events Id"
												name="EventsId" value="<%=EventsId%>" readonly>
										</div>
										<div class="form-group col-md-6">
											<label for="cname">Events Name:</label> <input type="text"
												class="form-control" id="cname" placeholder="Full Name"
												name="cname" required>
										</div>
									</div>
									<div class="row">
										<div class="form-group col-md-4">
											<label for="email">Events Date:</label> <input type="date"
												class="form-control" id="email" 
											name="edate" required> <span id="emailloc"></span>
										</div>
										<div class="form-group col-md-4">
											<label for="mobile">Events StartTime:</label> <input
												type="time" class="form-control" id="mobile" name="estrat"
												required maxlength="10">
										</div>
										<div class="form-group col-md-4">
											<label for="mobile">Events EndTime:</label> <input
												type="time" class="form-control" id="mobile" name="eend"
												required maxlength="10">
										</div>
									</div>


									<div class="row">
										<div class="form-group col-md-6">
											<label for="address">Description:</label>
											<textarea class="form-control" id="address"
												placeholder="Description" name="desc" required
												maxlength="60"></textarea>
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

	</main>
	<!-- End #main -->



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