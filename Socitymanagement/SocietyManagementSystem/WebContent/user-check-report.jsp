<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!doctype html>
<html lang="en">

<head>

<title>Society Management System</title>

<!-- Switchery css -->
<link href="../plugins/switchery/switchery.min.css" rel="stylesheet" />

<!-- Bootstrap CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<!-- App CSS -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />

<!-- Modernizr js -->

</head>
<body>
	<%
		if (session.getAttribute("flatNo") != null && session.getAttribute("flatNo") != "") {
	%>
	<div class="wrapper">
		<jsp:include page="user-side-header.jsp"></jsp:include>
		<div class="container">
			<!-- Page-Title -->
			<div class="row">
				<div class="col-sm-12">
					<div class="page-title-box">

						<h4 class="page-title">Visitor Report</h4>
					</div>
				</div>
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-12">
					<div class="card-box">
						<div class="row">
							<div class="col-lg-6">
								<h4 class="header-title m-t-0">Visitor Report</h4>
								<form action="user-check-report-details.jsp" method="post">
									<div class="p-20">
										<div class="form-group">
											<label for="date1">From Date <span
												class="text-danger"></span>
											</label> <input type="date" class="form-control no-resize"
												placeholder="Search Visitor" name="date1">
										</div>
										<div class="form-group">
											<label for="date2">To Date <span class="text-danger"></span>
											</label> <input type="date" class="form-control no-resize"
												placeholder="Search Visitor" name="date2">
										</div>
										<div class="form-group text-left m-b-0">
											<button class="btn btn-primary waves-effect waves-light"
												type="submit">Search Report</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- end row -->
				</div>
			</div>
			<!-- end col-->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
		<!-- end row -->
		<!-- container -->
	</div>
	<!-- End wrapper -->

	<!-- jQuery  -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/waves.js"></script>
	<script src="assets/js/jquery.nicescroll.js"></script>
	<script src="../plugins/switchery/switchery.min.js"></script>

	<!-- Validation js (Parsleyjs) -->
	<script src="../plugins/parsleyjs/parsley.min.js"></script>

	<!-- App js -->
	<script src="assets/js/jquery.core.js"></script>
	<script src="assets/js/jquery.app.js"></script>

	<script>
		$(document).ready(function() {
			$('form').parsley();
		});
	</script>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>
