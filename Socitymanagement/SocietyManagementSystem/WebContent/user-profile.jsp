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

						<h4 class="page-title">Your Profile</h4>
					</div>
				</div>
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-12">
					<div class="card-box">

						<div class="row">
							<div class="col-lg-6">
								<h4 class="header-title m-t-0">My Profile</h4>
								<%
									String profile = (String) session.getAttribute("profile");
									if (profile != null) {
										session.removeAttribute("profile");
								%>
									<div class="alert alert-success" id="success">Profile edited successfully.</div>
								<%
									}
								%>
								<%
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery(
										"select * from tblallotments where member_contact_no='" + session.getAttribute("mobile") + "' and block='"
										+ session.getAttribute("block") + "' and flat_no='" + session.getAttribute("flatNo") + "'");
									if (resultset.next()) {
								%>
								<form action="EditProfile" method="post">
									<div class="p-20">
										<div class="form-group">
											<label for="mobileNo">Mobile No<span
												class="text-danger">*</span></label> <input type="text"
												name="mobileNo"
												value="<%=resultset.getString("member_contact_no")%>"
												class="form-control" readonly>
										</div>
										<div class="form-group">
											<label for="emergency_mobileNo">Emergency Mobile No<span
												class="text-danger">*</span></label> <input type="text"
												name="emergencyMobileNo"
												value="<%=resultset.getString("emergency_contact_no")%>"
												class="form-control" required='true'>
										</div>

										<div class="form-group">
											<label for="block">Block<span class="text-danger">*</span></label>
											<input type="text" name="block"
												value="<%=resultset.getString("block")%>"
												class="form-control" readonly>
										</div>
										<div class="form-group">
											<label for="flatNo">Flat No <span class="text-danger">*</span></label>
											<input type="text" name="flatNo"
												value="<%=resultset.getString("flat_no")%>"
												class="form-control" readonly>
										</div>
										<div class="form-group">
											<label for="numberOfMembers">No of Members In Family<span
												class="text-danger">*</span></label> <input type="text"
												name="numberOfMembers"
												value="<%=resultset.getString("total_family_members")%>"
												class="form-control">
										</div>
										<div class="form-group">
											<label for="address">Address <span
												class="text-danger">*</span></label> <input type="text"
												name="address"
												value="<%=resultset.getString("permanent_address")%>"
												class="form-control">
										</div>
										<div class="form-group">
											<label for="allotmentDate">Allotment Date <span
												class="text-danger"></span></label> <input type="text"
												name="allotmentDate"
												value="<%=resultset.getString("created_at")%>" readonly=""
												class="form-control" readonly>
										</div>
										<div class="form-group">
											<input type="submit" class="btn btn-info"
												value="Update Profile">
										</div>
									</div>
								</form>
								<%
									}
								%>
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
