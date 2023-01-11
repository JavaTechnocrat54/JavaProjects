<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from webthemez.com/demo/marvel-bootstrap-html-admin-template/empty.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 08 Oct 2021 04:26:17 GMT -->
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Society Management System</title>
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script>
	function myFunction() {
		var block = document.getElementById("block").value;
		document.location.href = "admin-add-bill.jsp?block=" + block;
	}
</script>
</head>
<body>
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<div id="wrapper">
		<jsp:include page="admin-header.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">View Visitors</h1>
				<ol class="breadcrumb">
					<li><a href="admin-dashboard.jsp">Home</a></li>
					<li><a href="admin-view-all-visitors-report.jsp">View Visitors
							</a></li>
				</ol>
			</div>
			<div id="page-inner">
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="panel panel shadow p-3 mb-5 ">
								<div class="panel-heading bg-light"
									style="text-transform: uppercase">
									<strong>View Visitors &nbsp;[&nbsp;<%=(new java.util.Date()).toLocaleString()%>&nbsp;]&nbsp;&nbsp;
									</strong>
								</div>

								<div class="panel-body">
									<form action="admin-view-visitors-between-dates.jsp" method="post">
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="date1">From Date:</label> <input type="date"
													class="form-control" id="date1" name="date1">
													
											</div>
											<div class="form-group col-md-12">
												<label for="date2">To Date:</label> <input type="date"
													class="form-control" id="date2" name="date2">	
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<input type="submit" class="btn btn-primary" value="Search">
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<jsp:include page="footer.jsp"></jsp:include>
				</div>
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- Metis Menu Js -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>
