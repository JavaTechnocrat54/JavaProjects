<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from webthemez.com/demo/marvel-bootstrap-html-admin-template/table.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 08 Oct 2021 04:26:16 GMT -->
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Society Management System</title>
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->

<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- TABLE STYLES-->
<link href="assets/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
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
					<li><a href="admin-view-visitors.jsp">View Visitors</a></li>
				</ol>

			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
							<div class="panel-heading">View Visitors</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>Vid</th>
												<th>Name</th>
												<th>Mobile No</th>
												<th>Address</th>
												<th>Block</th>
												<td>Flat No</td>
												<td>Whome To Meet</td>
												<td>Reason To Meet</td>
												<th>Created At</th>
												<th>Updated At</th>
											</tr>
										</thead>
										<%
											ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblvisitors");
											while (resultset.next()) {
										%>
										<tbody>
											<tr class="odd gradeX">
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

							</div>
						</div>
						<!--End Advanced Tables -->
					</div>
				</div>
				<!-- /. ROW  -->
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
		<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- Metis Menu Js -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>	
</body>
</html>
