<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!doctype html>
<html lang="en">

<!-- App title -->
<title>Society Management System</title>
<!--Morris Chart CSS -->
<link rel="stylesheet" href="../plugins/morris/morris.css">
<!-- Switchery css -->
<link href="../plugins/switchery/switchery.min.css" rel="stylesheet" />
<!-- Bootstrap CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- App CSS -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<!-- Modernizr js -->
<script src="assets/js/modernizr.min.js"></script>
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
						<h4 class="page-title">Dashboard</h4>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-xl-6">
					<div class="card-box tilebox-one">
						<h2 class="m-b-20">
							<span data-plugin="counterup"> 
							<%
							 	int complaintCount = 0;
							 	ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcomplaints where block='"+ session.getAttribute("block") + "' and flat_no='" + session.getAttribute("flatNo") + "'");
								rs.next();
							 	complaintCount = rs.getInt(1);
							 %> <%=complaintCount%>
							</span>
						</h2>
						<h6 class="text-muted text-uppercase m-b-20">Raised
							Complaints</h6>
					</div>
				</div>
				<div class="col-md-6 col-xl-6">
					<div class="card-box tilebox-one">
						<i class="fa fa-building float-right"></i>
						<h2 class="m-b-20">
							<span data-plugin="counterup"> 
							<%
							 	int count = 0;
							 	ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblvisitors where block='"+ session.getAttribute("block") + "' and flat_no='" + session.getAttribute("flatNo") + "'");
							 	resultset.next();
							 	count = resultset.getInt(1);
							 %> <%=count%>
							</span>
						</h2>
						<h6 class="text-muted text-uppercase m-b-20">Total Visitors</h6>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card-box tilebox-one">
						<h2 class="m-b-20">
							<span data-plugin="counterup"> 
							<%
							 	int billCount = 0;
							 	ResultSet resultBill = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblbills where block='"+ session.getAttribute("block") + "' and flat_no='" + session.getAttribute("flatNo") + "'");
							 	resultBill.next();
							 	billCount = resultBill.getInt(1);
							 %> <%=billCount%>
							</span>
						</h2>
						<h6 class="text-muted text-uppercase m-b-20">Total Bills</h6>
					</div>
				</div>
			</div>
			<!-- end row -->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
		<!-- container -->
	</div>
	<!-- End wrapper -->
	<!-- jQuery  -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/waves.js"></script>
	<script src="assets/js/jquery.nicescroll.js"></script>
	<script src="../plugins/switchery/switchery.min.js"></script>

	<!--Morris Chart-->
	<script src="../plugins/morris/morris.min.js"></script>
	<script src="../plugins/raphael/raphael.min.js"></script>

	<!-- Counter Up  -->
	<script src="../plugins/waypoints/lib/jquery.waypoints.min.js"></script>
	<script src="../plugins/counterup/jquery.counterup.js"></script>

	<!-- Page specific js -->
	<script src="assets/pages/jquery.dashboard.js"></script>

	<!-- App js -->
	<script src="assets/js/jquery.core.js"></script>
	<script src="assets/js/jquery.app.js"></script>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>