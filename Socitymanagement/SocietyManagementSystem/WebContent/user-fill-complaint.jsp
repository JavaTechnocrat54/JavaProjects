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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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

						<h4 class="page-title">Raise Complaint</h4>
					</div>
				</div>
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-12">
					<div class="card-box">
						<div class="row">
							<div class="col-lg-6">
								<h4 class="header-title m-t-0">Raise Complaint</h4>
								<%
									String complaint = (String) session.getAttribute("complaint");
									if (complaint != null) {
										session.removeAttribute("complaint");
								%>
									<div class="alert alert-info" id="info">You have fill complaint successfully.</div>
								<%
									}
								%>
								<form action="FillComplaint" method="post">
									<div class="p-20">
										<div class="form-group">
											<label for="complaintType">Complaint Type<span
												class="text-danger">*</span></label> <select name="complaintType"
												class="form-control">
												<option>Select Complaint</option>
												<option>Electrical</option>
												<option>Plumbing</option>
												<option>Common Area</option>
												<option>Security</option>
												<option>Fire</option>
												<option>Lift</option>
												<option>Parking</option>
												<option>Sports</option>
												<option>Billing & Payment</option>
												<option>Events</option>
												<option>Gym</option>
												<option>Others</option>
											</select>
										</div>
										<div class="form-group">
											<label for="complaintDescription">Complaint
												Description <span class="text-danger"></span>
											</label>
											<textarea rows="4" class="form-control no-resize"
												placeholder="Complaint Description"
												name="complaintDescription"></textarea>
										</div>
										<div class="form-group text-left m-b-0">
											<button class="btn btn-primary waves-effect waves-light"
												type="submit">Fill Complaint</button>
											<button class="btn btn-danger waves-effect waves-light"
												type="reset">Cancel</button>

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
