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
						<i class="fa fa-medkit"></i> Complain
					</h3>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 col-sm-12  ">
					<div class="x_panel">
						<div class="x_title">
							<h2>List of Complain</h2>
							<ul class="nav navbar-right panel_toolbox">
								
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<table id="datatable" class="table table-striped table-bordered"
								style="width: 100%">
								<thead>
									<tr>
										<th>CoplainId</th>								
										<th>Employee Name</th>
										<th>Subject</th>
										<th>Complain</th>
										
										
									</tr>
								</thead>

							<%
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcomplain");
									while (resultset.next()) {
								%>
								<tbody>
									<tr>
										<td><%=resultset.getInt("cid")%></td>
										<td><%=resultset.getString("ename")%></td>
										<td><%=resultset.getString("subject")%></td>
										<td><%=resultset.getString("complain")%></td>
									
										
										<td> <a
											href="AdminRemoveComplain.jsp?EventId=<%=resultset.getInt("cid")%>"
											class="btn btn-sm btn-danger text-white" onclick="return confirm('Are you sure do you want to delete this Event?');"><i
												class="fa fa-trash"></i> delete</a></td>
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