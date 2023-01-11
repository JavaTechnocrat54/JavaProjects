<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.connection.DatabaseConnection"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


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
<style type="text/css">
.row {
	padding: 1rem;
}
</style>

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
					<a href="CIndex.jsp">Delicious</a>
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
					<h2>ViewProfile</h2>
					<ol>
						<li><a href="CIndex.jsp">Home</a></li>
						<li>Profile Page</li>
					</ol>
				</div>

			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
			<div class="container">
			<%
			String creg=(String) session.getAttribute("user-reg");
			if(creg!=null){
				
				%>
				<div class="alert alert-success" id="info"
				></a><%=creg %></div>
				
				
				<%
				session.removeAttribute("user-reg");
			}
			ResultSet viewUser=DatabaseConnection.getResultFromSqlQuery("select * from tbluser");
			while(viewUser.next()){
				
		
			%>
				<form action="EditConsumer" method="post">
					<div class="row">
					
						<div class="col-md-6 form-group">
							<input type="text" name="name" class="form-control" id="name"
								value=<%=viewUser.getString(2) %>>
						</div>
						<div class="col-md-6 form-group mt-3 mt-md-0">
							<input type="email" class="form-control" name="email" id="email"
								value="<%=viewUser.getString(3)%>">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<input type="text" name="Password" class="form-control"
								id="Password" value="<%=viewUser.getString(4)%>">
						</div>
						<div class="col-md-6 form-group mt-3 mt-md-0">
							<input type="text" class="form-control" name="phone" id="phone"
								value="<%=viewUser.getString(5)%>">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">

							<select class="form-control" name="gender">
								<option value="<%=viewUser.getString(6) %>"><%=viewUser.getString(6) %></option>

								<option>Male</option>
								<option>Female</option>
							</select>
						</div>
						
					</div>
					
					<div class="row">
					
					<button type="submit" class="btn btn-warning">Edit</button>
					</div>
				</form>
				<%} %>
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
</body>
</html>