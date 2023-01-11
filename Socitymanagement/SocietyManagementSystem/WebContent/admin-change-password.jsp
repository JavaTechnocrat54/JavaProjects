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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
					<li class="active">Change Password</li>
				</ol>

			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">Change Password</div>
							<div class="panel-body">
								<div class="row">
									<%
										String message = (String) session.getAttribute("password-change-success");
									if (message != null) {
										session.removeAttribute("password-change-success");
									%>
									<div class='alert alert-success' id='success'>Password
										change successfully.</div>
									<%
										}
									%>
									<%
										String fail = (String) session.getAttribute("password-change-fail");
									if (fail != null) {
										session.removeAttribute("password-change-fail");
									%>
									<div class="alert alert-danger" id='danger'>Old password
										does not match..</div>
									<%
										}
									%>
									<%
										String passwordConfirm = (String) session.getAttribute("password-not-match");
									if (passwordConfirm != null) {
										session.removeAttribute("password-not-match");
									%>
									<div class="alert alert-warning" id='danger'>New password
										and confirm password does not match.</div>
									<%
										}
									%>
									<div class="col-lg-6">
										<div class="p-20">
											<form action="AdminChangePassword" method="post"
												name="changepassword" method="post"
												onsubmit="return checkpass();">
												<div class="form-group">
													<label for="userName">Current Password<span
														class="text-danger">*</span></label> <input type="password"
														name="cpassword" id="currentpassword" class="form-control"
														required="true" placeholder="Current Password">
												</div>
												<div class="form-group">
													<label for="emailAddress">New Password<span
														class="text-danger">*</span></label> <input type="password"
														name="password" class="form-control" required="true"
														placeholder="New Password">
												</div>
												<div class="form-group">
													<label for="pass1">Confirm Password<span
														class="text-danger">*</span></label> <input type="password"
														name="confpass" id="confirmpassword" value=""
														class="form-control" required="true"
														placeholder="Confirm Password">
												</div>
												<div class="form-group text-left m-b-0">
													<button class="btn btn-primary waves-effect waves-light"
														type="submit" name="change">Change Password</button>

												</div>
											</form>
										</div>
									</div>
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
	<script type="text/javascript">
		$(function() {
			$('#danger').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#success').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#info').delay(3000).show().fadeOut('slow');
		});
	</script>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>
