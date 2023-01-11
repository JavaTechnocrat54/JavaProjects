<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
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
	<section class="breadcrumbs">
			
<div class="container">				<div class="d-flex justify-content-between align-items-center">
					<h2>Admin Dashboard</h2>
					<ol>
						<li><a href="admin-dashbord.jsp">Home</a></li>
						<li>Admin/AddEvent</li>
					</ol>
				</div>
</div>
			
		</section>
<div class="container">
		<!-- ======= Breadcrumbs ======= -->
		
		<!-- End Breadcrumbs -->

			<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						<i class="fa fa-medkit"></i> Event
					</h3>
				</div>
			</div>
			<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">
					<strong>Admin Profile</strong>
				</h4>
			</div>
		</div>
		<div class="panel panel-warning shadow p-3 mb-5">
			<div class="panel-heading">View Profile</div>
			<div class="panel-body">
				<%
					String message = (String) session.getAttribute("profile-update");
					if (message != null) {
						session.removeAttribute("profile-update");
				%>
				<div class="alert alert-success" id="success">Profile updated successfully.</div>
				<%
					}
				%>
				<%
					ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tbladmin where uname='"+ session.getAttribute("uname") + "' and email_id='" + session.getAttribute("email") + "'");
					if (resultset.next()) {
				%>
				<form action="AdminEditProfile" method="post">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="adminId">Admin Id:</label> <input type="text"
								class="form-control" id="adminId" placeholder="Admin Id"
								name="adminId" value="<%=resultset.getInt("id")%>" readonly>
						</div>
						<div class="form-group col-md-6"">
							<label for="fname">Full Name:</label> <input type="text"
								class="form-control" id="fname" placeholder="Full Name"
								name="fname" value="<%=resultset.getString("full_name") %>" required>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="email">Email Id:</label> <input type="text"
								class="form-control" id="email" placeholder="Email Id"
								name="email" value="<%=resultset.getString("email_id") %>" readonly>
						</div>
						<div class="form-group col-md-6">
							<label for="mobile">Mobile No:</label> <input type="text"
								class="form-control" id="mobile" placeholder="Mobile No"
								name="mobile" value="<%=resultset.getString("mobile_no") %>" required>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="address">Address:</label> <textarea
								class="form-control" id="address" placeholder="Address"
								name="address" value="<%=resultset.getString("address") %>"><%=resultset.getString("address") %></textarea>
						</div>
					</div>
					<input type="submit" value="Edit Info" class="btn btn-primary">
					<input type="reset" class="btn btn-danger" value="Cancel">
				</form>
				<%
					}
				%>
			</div>
		</div>
	</div>
	</div>



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