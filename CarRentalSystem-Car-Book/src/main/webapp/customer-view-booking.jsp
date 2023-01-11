<!DOCTYPE html>
<%@page import="javax.naming.PartialResultException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<html lang="en">
<head>
<title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<jsp:include page="font-side-header.jsp"></jsp:include>
	<!-- END nav -->
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('images/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Car details <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">Book A Car</h1>
				</div>
			</div>
		</div>
		<br> <br> <br> <br> <br>
		<br>
		<div class="site-section">
			<div class="container">
			
			<div class="row">
						<!-- table section -->

						<!-- table section -->
						<div class="col-md-12">
							<div class="white_shd full margin_bottom_30">
								<div class="full graph_head">
									<div class="heading1 margin_0">
										<h2>Booking</h2>

									</div>
								</div>
								<div class="table_section padding_infor_info">
									<div class="table-responsive-sm">
										<table class="table">
											<thead>
												<tr>
													<th>#</th>
													<th>Image</th>
													<th>CustomerID</th>
													<th>CustomerName</th>
													<th>Email</th>
													<th>Carid</th>
													<th>Price</th>
													<td>Status</td>
												</tr>
											</thead>
											<%
											ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblbooking");
											while (resultset.next()) {
											%>
											<tbody>
												<tr>
													<td><%=resultset.getInt("bookid")%></td>
													<td><img alt="ImgnotFound"
														src="AdminAddCar?id=<%=resultset.getInt("carid")%>"
														width="70"></td>
													<td><%=resultset.getString("custid")%></td>
													<td><%=resultset.getString("cname")%></td>
													<td><%=resultset.getString("email")%></td>
													<td><%=resultset.getString("carid")%></td>
													
													<td><%=resultset.getInt("price")%></td>
												<%
											if (resultset.getString("status").equals("Confirm")) {
											%>
											<td><span class="text-success">Confirm</span></td>
											<%
											} else {
											%>
											<td><span class="text-danger">Pending</span></td>
											<%
											}
											%>
													
												</tr>
											</tbody>
											<%
											}
											%>
										</table>
									</div>
								</div>
							</div>
						</div>
						</div>
				</div>
			</div>
		



		<!-- loader -->
		<div id="ftco-loader" class="show fullscreen">
			<svg class="circular" width="48px" height="48px">
				<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
					stroke-width="4" stroke="#eeeeee" />
				<circle class="path" cx="24" cy="24" r="22" fill="none"
					stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
		</div>


		<script src="js/jquery.min.js"></script>
		<script src="js/jquery-migrate-3.0.1.min.js"></script>
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/jquery.waypoints.min.js"></script>
		<script src="js/jquery.stellar.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/aos.js"></script>
		<script src="js/jquery.animateNumber.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.timepicker.min.js"></script>
		<script src="js/scrollax.min.js"></script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script src="js/google-map.js"></script>
		<script src="js/main.js"></script>
</body>
</html>