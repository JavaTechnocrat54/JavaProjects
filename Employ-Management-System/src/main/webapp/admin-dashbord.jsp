<!DOCTYPE html>
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
						<li><a href="index.html">Home</a></li>
						<li>Admin Dashboard</li>
					</ol>
				</div>

			</div>
		</section>
		<!-- End Breadcrumbs -->

		<section class="inner-page">
			<div class="container">
				
				<div class="row">
					<div class="col-md-12 col-sm-12  ">
						<div class="x_panel">
							<div class="x_content">
								<div class="row">
									<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
										<div class="alert alert-default back-widget-set text-center">
											<%
											int countEmployee = 1;
											%>
											<i class="fas fa-user-tie fa-5x"></i>
											<h3>
												<font color="#FF9933"><span class="counter"><%=countEmployee%></span></font>
											</h3>
											<strong style="text-transform: uppercase; font-size: 15px;"><a
												href="admin-view-employ.jsp" class="text-dark"
												target="_blank">Total Employee</a></strong>
										</div>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
										<div class="alert alert-default back-widget-set text-center">
											<%
											int countEvent = 1;
											%>
											<i class="fas fa-calendar  fa-5x"></i>
											<h3>
												<font color="#FF9933"><span class="counter"><%=countEvent%></span></font>
											</h3>
											<strong style="text-transform: uppercase; font-size: 15px;"><a
												href="admin-view-employ.jsp" class="text-dark"
												target="_blank">Total Events</a></strong>
										</div>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
										<div class="alert alert-default back-widget-set text-center">
											<%
											int countLeave = 1;
											%>
												<i class="fas fa-comment-alt fa-5x"></i>
											<h3>
												<font color="#FF9933"><span class="counter"><%=countLeave%></span></font>
											</h3>
											<strong style="text-transform: uppercase; font-size: 15px;"><a
												href="admin-view-employ.jsp" class="text-dark"
												target="_blank">Total Leave</a></strong>
										</div>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
										<div class="alert alert-default back-widget-set text-center">
											<%
											int countComplain = 1;
											%>
											<i class="fas fa-comment fa-5x"></i>
											<h3>
												<font color="#FF9933"><span class="counter"><%=countComplain%></span></font>
											</h3>
											<strong style="text-transform: uppercase; font-size: 15px;"><a
												href="admin-view-employ.jsp" class="text-dark"
												target="_blank">Total Complain</a></strong>
										</div>
									</div>
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