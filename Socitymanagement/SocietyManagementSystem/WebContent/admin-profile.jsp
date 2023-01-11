<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from webthemez.com/demo/marvel-bootstrap-html-admin-template/form.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 08 Oct 2021 04:26:17 GMT -->
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
</head>
<body>
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<div id="wrapper">
		<jsp:include page="admin-header.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">Admin Profile</h1>
				<ol class="breadcrumb">
					<li><a href="admin-dashboard.jsp">Home</a></li>
					<li class="active">Admin Profile</li>
				</ol>

			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">Admin Profile</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-2"></div>
									<%
										ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tbladmin where uname='" + session.getAttribute("uname") + "'");
										if (resultset.next()) {
									%>
									<div class="col-lg-8">
										<form role="form">
											<div class="form-group">
												<label>Admin Id</label> <input class="form-control" value="<%=resultset.getString("id") %>" readonly>
											</div>
											<div class="form-group">
												<label>Email Id</label> <input class="form-control" value="<%=resultset.getString("email") %>" readonly>
											</div>
											<div class="form-group">
												<label>User Name</label> <input class="form-control"
													value="<%=resultset.getString("uname") %>" readonly>
											</div>
											<div class="form-group">
												<label>Password</label> <input type="password" class="form-control" value="<%=resultset.getString("upass") %>">
											</div>
											<div class="form-group">
												<label>Created At</label> <input class="form-control"
													value="<%=resultset.getString("created_at") %>" readonly>
											</div>
											<div class="form-group">
												<label>Updated At</label> <input class="form-control"
													value="<%=resultset.getString("updated_at") %>" readonly>
											</div>

										</form>
									</div>
									<%
										}
									%>
									<div class="col-lg-2"></div>
								</div>
								<!-- /.row (nested) -->
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<jsp:include page="footer.jsp"></jsp:include>
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
