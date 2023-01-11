<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
		
		
		<div class="container-fluid header bg-white p-0">
			<div
				class="row g-0 align-items-center flex-column-reverse flex-md-row">
				<div class="col-md-6 p-5 mt-lg-5">
					<h1 class="display-5 animated fadeIn mb-4">Property List</h1>
					<nav aria-label="breadcrumb animated fadeIn">
						<ol class="breadcrumb text-uppercase">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Pages</a></li>
							<li class="breadcrumb-item text-body active" aria-current="page">Property
								List</li>
						</ol>
					</nav>
				</div>
				<div class="col-md-6 animated fadeIn">
					<img class="img-fluid" src="img/header.jpg" alt="">
				</div>
			</div>
		</div>
		<!-- Header End -->


		<!-- Property List Start -->
		<div class="container-xxl py-5">
			<div class="container">
				<div class="row g-0 gx-5 align-items-end">
					<div class="col-lg-6">
						<div class="text-start mx-auto mb-5 wow slideInLeft"
							data-wow-delay="0.1s">
							<h1 class="mb-3">Property Listing</h1>
							<p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor
								ut dolore lorem kasd vero ipsum sit eirmod sit diam justo sed
								rebum.</p>
						</div>
					</div>

				</div>
				<div class="tab-content">

					<div class="row g-4">
						<%
						ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblhouse");
						while (rs.next()) {
						%>
						<div class="col-lg-4 col-md-6 " data-wow-delay="0.1s">
							<div class="property-item rounded overflow-hidden">
								<div class="position-relative overflow-hidden">

									<a href="book.jsp?id=<%=rs.getInt("id") %>"><img class="img-fluid" src="AdminAddHouse?id=<%=rs.getInt("id") %>" style="width: 550px"
										alt=""></a>
									<div
										class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For
										Rent</div>
									<div
										class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3"><%=rs.getString("type")%></div>
								</div>
								<div class="p-4 pb-0">
									<h5 class="text-primary mb-3">
										Rs:-<%=rs.getString("price")%></h5>
									<a class="d-block h5 mb-2" href=""><%=rs.getString("hname")%></a>
									<p>
										<i class="fa fa-map-marker-alt text-primary me-2"></i><%=rs.getString("address")%>
									</p>
								</div>
								<div class="d-flex border-top">
									<small class="flex-fill text-center border-end py-2"><i
										class="fa fa-ruler-combined text-primary me-2"></i><%=rs.getString("sqft")%>
										Sqft</small> <small class="flex-fill text-center border-end py-2"><i
										class="fa fa-bed text-primary me-2"></i><%=rs.getString("bed")%>
										Bed</small> <small class="flex-fill text-center py-2"><i
										class="fa fa-bath text-primary me-2"></i><%=rs.getString("bath")%>
										Bath</small>
								</div>
							</div>

						</div>
						<%
						}
						%>
					</div>
				</div>

				<!-- Property List End -->


				<!-- Call to Action Start -->
				<div class="container-xxl py-5">
					<div class="container">
						<div class="bg-light rounded p-3">
							<div class="bg-white rounded p-4"
								style="border: 1px dashed rgba(0, 185, 142, .3)">
								<div class="row g-5 align-items-center">
									<div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
										<img class="img-fluid rounded w-100"
											src="img/call-to-action.jpg" alt="">
									</div>
									<div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
										<div class="mb-4">
											<h1 class="mb-3">Contact With Our Certified Agent</h1>
											<p>Eirmod sed ipsum dolor sit rebum magna erat. Tempor
												lorem kasd vero ipsum sit sit diam justo sed vero dolor duo.</p>
										</div>
										<a href="" class="btn btn-primary py-3 px-4 me-2"><i
											class="fa fa-phone-alt me-2"></i>Make A Call</a> <a href=""
											class="btn btn-dark py-3 px-4"><i
											class="fa fa-calendar-alt me-2"></i>Get Appoinment</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Call to Action End -->






		
		
		
		
		
		
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