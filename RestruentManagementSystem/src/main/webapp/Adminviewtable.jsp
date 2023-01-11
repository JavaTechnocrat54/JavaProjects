<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Inner Page - Delicious Bootstrap Template</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">


</head>

<body>

	<!-- ======= Top Bar ======= -->
	<section id="topbar" class="d-flex align-items-center fixed-top ">
		<div
			class="container-fluid container-xl d-flex align-items-center justify-content-center justify-content-lg-start">
			<i class="bi bi-phone d-flex align-items-center"><span>+1
					5589 55488 55</span></i> <i
				class="bi bi-clock ms-4 d-none d-lg-flex align-items-center"><span>Mon-Sat:
					11:00 AM - 23:00 PM</span></i>
		</div>
	</section>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top d-flex align-items-center ">
		<div
			class="container-fluid container-xl d-flex align-items-center justify-content-between">

			<div class="logo me-auto">
				<h1>
					<a href="AdminDashbord.jsp">Delicious</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>

			<nav id="navbar" class="navbar order-last order-lg-0">

				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->


		</div>
	</header>
	<!-- End Header -->

	<main id="main">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<h2>ViewTableBooking</h2>
					<ol>
						<li><a href="AdminDashbord.jsp">Home</a></li>
						<li>ViewTableBooking</li>
					</ol>
				</div>

			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
			<div class="container">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Phone</th>
							<th>Date</th>
							<th>Time</th>
							<th>No.</th>
							<th>Message</th>
							<th>Status</th>
							<th>UpdateStatus</th>
							<th>Delete</th>

						</tr>
					</thead>
					<tbody>
						<%
						ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblbooking ");
						while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getInt(1)%>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
							<td><%=rs.getString(9)%></td>
							<%
							if (rs.getString(9).equals("deliver")) {
							%>
							<td><a
								href="CustomerEventBookingStatus?orderId=<%=rs.getInt(1)%>"><button
										class="btn btn-danger"
										onClick="return confirm('Are you sure, You want to change product delivery status');">Pending</button></a></td>
							<%
							} else {
							%>
							<td><a
								href="CustomerProductsBookingStatus?orderId=<%=rs.getInt(1)%>"><button
										class="btn btn-primary"
										onClick="return confirm('Are you sure, You want to change product delivery status?');">Deliver</button></a></td>
							<%
							}
							%>
						
						<td><a href="DelateTable.jsp?orderId=<%=rs.getInt(1)%>" class="btn btn-danger">Delate</a></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="container">
			<h3>Delicious</h3>
			<p>Et aut eum quis fuga eos sunt ipsa nihil. Labore corporis
				magni eligendi fuga maxime saepe commodi placeat.</p>
			<div class="social-links">
				<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
					href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
					href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
					href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
					href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
			</div>
			<div class="copyright">
				&copy; Copyright <strong><span>Delicious</span></strong>. All Rights
				Reserved
			</div>

		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>