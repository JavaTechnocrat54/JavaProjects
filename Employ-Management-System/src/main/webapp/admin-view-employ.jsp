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
						<li>Admin/AddEmployee</li>
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
						<i class="fa fa-medkit"></i> Employee
					</h3>
				</div>
			</div>
			<div class="clearfix"></div>
			<%
				String editmessage = (String) session.getAttribute("success");
				if (editmessage != null) {
				session.removeAttribute("success");
			%>
			<div class="alert alert-info" id="info">Employee information updated.</div>
			<%
				}
			%>
			<%
				String deleteEmployee = (String) session.getAttribute("employee");
				if (deleteEmployee != null) {
				session.removeAttribute("employee");
			%>
			<div class="alert alert-danger" id="danger">Employee deleted.</div>
			<%
				}
			%>
			<div class="row">
				<div class="col-md-12 col-sm-12  ">
					<div class="x_panel">
						<div class="x_title">
							<h2>List of Employees</h2>
							<ul class="nav navbar-right panel_toolbox">
								<a href="admin-add-employee.jsp"
									class="btn btn-sm btn-info text-white"><i
									class="fa fa-plus"></i> Add Employee</a>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<table id="datatable" class="table table-striped table-bordered"
								style="width: 100%">
								<thead>
									<tr>
										<th>Id</th>								
										<th>Name</th>
										<th>Email</th>
										<th>Dob</th>
										<th>MobileNo</th>
										<th>Gender</th>
										<th>Job</th>
										<th>Scalary</th>
										<th>Address</th>
										<th>JoinDate</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>

							<%
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblemployee");
									while (resultset.next()) {
								%>
								<tbody>
									<tr>
										<td><%=resultset.getInt("eid")%></td>
										<td><%=resultset.getString("name")%></td>
										<td><%=resultset.getString("email")%></td>
										<td><%=resultset.getString("dob")%></td>
										<td><%=resultset.getString("mobile")%></td>
										<td><%=resultset.getString("gender")%></td>
										<td><%=resultset.getString("job")%></td>
										<td><%=resultset.getString("scalary")%></td>
										<td><%=resultset.getString("address")%>|<%=resultset.getString("pincode")%></td>
										<td><%=resultset.getString("gender")%></td>
										<%
											if (resultset.getString("status").equals("Onleave")) {
										%>
										<td><font color="red"><strong>Onleave</strong></font></td>
										<%
											} else {
										%>
										<td><font color="green"><strong>Active</strong></font></td>
										<%
											}
										%>
										<td><a
											href="admin-view-employee-details.jsp?employeeId=<%=resultset.getInt("eid")%>"
											class="btn btn-sm btn-info text-white"><i
												class="fa fa-eye"></i> details</a> <a
											href="admin-edit-employee-details.jsp?employeeId=<%=resultset.getInt("eid")%>"
											class="btn btn-sm btn-success text-white"><i
												class="fa fa-edit"></i> edit</a> <a
											href="AdminRemoveEmployee?employeeId=<%=resultset.getInt("eid")%>"
											class="btn btn-sm btn-danger text-white" onclick="return confirm('Are you sure do you want to delete this employee?');"><i
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