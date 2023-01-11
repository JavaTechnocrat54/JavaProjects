<!DOCTYPE html>
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

		<br> <br>

		<!-- page content -->
		<div class="right_col" role="main">
			<div class="">
				<div class="page-title">
					<div class="title_left">
						<h4>
							<i class="fas fa-home fa-2x"></i> Add House
							</h3>
					</div>
				</div>

				<div class="clearfix"></div>
				<%
				String message = (String) session.getAttribute("message");
				if (message != null) {
					session.removeAttribute("message");
				%>
				<div class="alert alert-success" id="success">House added
					successfully.</div>
				<%
				}
				%>
				<div class="x_panel">
					<div class="x_title">
						<h2>House Information</h2>
						<div class="clearfix"></div>
					</div>
					<%
					String medicine = (String) session.getAttribute("message");
					if (medicine != null) {
						session.removeAttribute("message");
					%>
					<div class="alert alert-info" id="info">New medicine added
						successfully.</div>
					<%
					}
					%>
					<div class="x_content shadow p-3 mb-5">
						<form role="form" action="AdminAddHouse" method="post"
							enctype="multipart/form-data">
							<div class="row">
								<%
								int HouseId = DatabaseConnection.generateHouseId();
								%>
								<div class="col-md-6 col-sm-6">
									<div class="form-group">
										<label>House Id</label> <input class="form-control"
											type="text" name="houseId" value="<%=HouseId%>" readonly>
									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="form-group">
										<label>Select House Type</label> <select class="form-control"
											name="hType">
												<option value="0">Chose Type</option>
											<option>Appartment</option>
											<option>Villa</option>
											<option>Office</option>
											<option>Building</option>
											<option>Home</option>
											<option>Shop</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12">
									<div class="form-group">
										<label>House Name</label> <input class="form-control"
											type="text" name="hName" placeholder="House Name">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-3 col-sm-4">
									<div class="form-group">
										<label> Price</label> <input class="form-control" type="text"
											name="hPrice" placeholder="House Purchase Price">
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label>Bath</label> <input class="form-control" type="text"
											name="hbath" placeholder="House Discount Price">
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label>Bed</label> <input class="form-control" type="text"
											name="hBed" placeholder="House Quantity">
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label>Sqft</label> <input class="form-control" type="text"
											name="hsqft" placeholder="House Quantity">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4 col-sm-4">
									<div class="form-group">
										<label>Owner Name</label> <input class="form-control"
											type="text" name="OWname" >
									</div>
								</div>
								<div class="col-md-4 col-sm-4">
									<div class="form-group">
										<label>Owner Mobile</label> <input class="form-control"
											type="text" name="owmobile" >
									</div>
								</div>
								<div class="col-md-4 col-sm-4">
									<div class="form-group">
										<label>Status</label> <select class="form-control"
											name="hStatus">
											<option>Active</option>
											<option>Pending</option>

										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12">
									<div class="form-group">
										<label>House Image</label> <input type="file"
											name="uploadLogo" class="form-control">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 col-sm-6">
									<div class="form-group">
										<label>House Description</label>
										<textarea class="form-control" name="hDescription"
											placeholder="House Description"></textarea>
									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="form-group">
										<label>House Address</label>
										<textarea class="form-control" name="hAddress"
											placeholder="House Address"></textarea>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-12 col-sm-12 ">
									<button type="submit" class="btn btn-info" value="">Add
										House</button>
									<input type="reset" class="btn btn-danger" name="Clear">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>








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