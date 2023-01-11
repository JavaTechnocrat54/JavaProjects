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
						<h4 class="m-t-0 header-title">View Visitors</h4>
						<table id="datatable"
							class="table table-bordered dt-responsive nowrap"
							style="border-collapse: collapse; border-spacing: 0; width: 100%;">
							<thead>
								<tr>
									<th>#</th>
									<th>Visitor Name</th>
									<th>Mobile No</th>
									<th>Address</th>
									<th>Block</th>
									<th>Flat No</th>
									<th>Whome To Meet</th>
									<th>Reason To Meet</th>
									<th>Created At</th>
									<th>Updated At</th>
								</tr>
							</thead>
							<%
								String date1 = request.getParameter("date1");
								String date2 = request.getParameter("date2");
								ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblvisitors where block='"
										+ session.getAttribute("block") + "' and flat_no='" + session.getAttribute("flatNo") + "' and created_at between '" + date1 + "' and '" + date2 + "'");
								while (resultset.next()) {
							%>
							<tbody>
								<tr>
									<td><%=resultset.getInt("visitor_id")%></td>
									<td><%=resultset.getString("visitor_name")%></td>
									<td><%=resultset.getString("visitor_mobile")%></td>
									<td><%=resultset.getString("visitor_address")%></td>
									<td><%=resultset.getString("block")%></td>
									<td><%=resultset.getString("flat_no")%></td>
									<td><%=resultset.getString("whome_to_meet")%></td>
									<td><%=resultset.getString("reason_to_meet")%></td>
									<td><%=resultset.getString("created_at")%></td>
									<td><%=resultset.getString("updated_at")%></td>
								</tr>
							</tbody>
							<%
								}
							%>
						</table>
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
