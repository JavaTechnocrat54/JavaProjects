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

						<h4 class="page-title">Search Visitor</h4>
					</div>
				</div>
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-12">
					<div class="card-box">
						<div class="row">
							<div class="col-lg-6">
								<h4 class="header-title m-t-0">Search Visitor</h4>
								<form action="user-search-visitors.jsp" method="post">
									<div class="p-20">
										<div class="form-group">
											<label for="complaintDescription">Search By Name OR
												Mobile No <span class="text-danger"></span>
											</label> <input type="text" class="form-control no-resize"
												placeholder="Search Visitor" name="visitor">
										</div>
										<div class="form-group text-left m-b-0">
											<button class="btn btn-primary waves-effect waves-light"
												type="submit">Search</button>
										</div>
									</div>
								</form>
								<table id="datatable"
									class="table table-bordered dt-responsive nowrap"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<%
										String visitor = request.getParameter("visitor");
										ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblvisitors where block='"
												+ session.getAttribute("block") + "' and flat_no='" + session.getAttribute("flatNo") + "' and visitor_name='" + visitor + "' OR visitor_mobile='" + visitor + "'");
										if (resultset.next()) {
									%>
									<tbody>
										<tr>
											<th>#</th>
											<td><%=resultset.getInt("visitor_id")%></td>
										</tr>
										<tr>
											<th>Visitor Name</th>
											<td><%=resultset.getString("visitor_name")%></td>
										</tr>
										<tr>
											<th>Mobile No</th>
											<td><%=resultset.getString("visitor_mobile")%></td>
										</tr>
										<tr>
											<th>Address</th>
											<td><%=resultset.getString("visitor_address")%></td>
										</tr>
										<tr>
											<th>Block</th>
											<td><%=resultset.getString("block")%></td>
										</tr>
										<tr>
											<th>Flat No</th>
											<td><%=resultset.getString("flat_no")%></td>
										</tr>
										<tr>
											<th>Whome To Meet</th>
											<td><%=resultset.getString("whome_to_meet")%></td>
										</tr>
										<tr>
											<th>Reason To Meet</th>
											<td><%=resultset.getString("reason_to_meet")%></td>
										</tr>
										<tr>
											<th>Created At</th>
											<td><%=resultset.getString("created_at")%></td>
										</tr>
										<tr>
											<th>Updated At</th>
											<td><%=resultset.getString("updated_at")%></td>
										</tr>
									</tbody>
									<%
										}
									%>
								</table>
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
