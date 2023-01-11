<!DOCTYPE html>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Makaan</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="fontawesome/all.css" rel="stylesheet">
<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<div class="container-xxl bg-white p-0">
		<jsp:include page="admin-header.jsp"></jsp:include>
		<!-- Header Start -->

		<br>
		<br>
		<section class="breadcrumbs"></section>
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
											int countCustomer = 0;
											ResultSet rsCustomer = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcustomer");
											rsCustomer.next();
											countCustomer = rsCustomer.getInt(1);
											%>
											<i class="fas fa-users fa-5x"></i>
											<h3>
												<font color="#FF9933"><span class="counter"><%=countCustomer%></span></font>
											</h3>
											<strong style="text-transform: uppercase; font-size: 15px;"><a
												href="admin-view-customer.jsp" class="text-dark"
												target="_blank">Total Customer</a></strong>
										</div>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
										<div class="alert alert-default back-widget-set text-center">
											<%
											int countHouse = 0;
											ResultSet rsHouse = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblhouse");
											rsHouse.next();
											countHouse = rsHouse.getInt(1);
											%>
											<i class="fas fa-home fa-5x"></i>
											<h3>
												<font color="#FF9933"><span class="counter"><%=countHouse%></span></font>
											</h3>
											<strong style="text-transform: uppercase; font-size: 15px;"><a
												href="adminviewhouse.jsp" class="text-dark"
												target="_blank">Total House</a></strong>
										</div>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
										<div class="alert alert-default back-widget-set text-center">
											<%
											int countLeave = 1;
											%>
											<i class="far fa-calendar-minus fa-5x"></i>
											<h3>
												<font color="#FF9933"><span class="counter"><%=countLeave%></span></font>
											</h3>
											<strong style="text-transform: uppercase; font-size: 15px;"><a
												href="admin-veiw-booking.jsp" class="text-dark"
												target="_blank">Total Booking</a></strong>
										</div>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
										<div class="alert alert-default back-widget-set text-center">
											<%
											int CountContact = 0;
											ResultSet rscontact = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcontact ");
											rscontact.next();
											CountContact = rscontact.getInt(1);
											%>
											<i class="fas fa-comment fa-5x"></i>
											<h3>
												<font color="#FF9933"><span class="counter"><%=CountContact%></span></font>
											</h3>
											<strong style="text-transform: uppercase; font-size: 15px;"><a
												href="admin-view-contact.jsp" class="text-dark"
												target="_blank">Total Contact</a></strong>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>
		</section>






		<br>
		<br>
		<jsp:include page="footer.jsp"></jsp:include>


		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>

</html>