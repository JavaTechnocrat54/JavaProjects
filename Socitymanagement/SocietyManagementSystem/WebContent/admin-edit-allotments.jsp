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
</head>
<body>
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<div id="wrapper">
		<jsp:include page="admin-header.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">Edit Allotment</h1>
				<ol class="breadcrumb">
					<li><a href="admin-dashboard.jsp">Home</a></li>
					<li><a href="#">Edit Allotments</a></li>
				</ol>
			</div>
			<div id="page-inner">
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="panel panel shadow p-3 mb-5 ">
								<div class="panel-heading bg-light"
									style="text-transform: uppercase">
									<strong>Edit Allotment &nbsp;[&nbsp;<%=(new java.util.Date()).toLocaleString()%>&nbsp;]&nbsp;&nbsp;
									</strong>
								</div>
								<%
									int flatNo = Integer.parseInt(request.getParameter("flatNo"));
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblallotments where flat_no='" + flatNo + "'");
									if (resultset.next()) {
								%>
								<div class="panel-body">
									<form action="EditAllotment" method="post">
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="allotmentId">Allotment Id:</label> <input
													type="text" class="form-control" id="flatNo"
													name="allotmentId"
													value="<%=resultset.getInt("allotment_id")%>" readonly>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="fullName">Member Name:</label> <input
													type="text" class="form-control" id="fullName"
													name="fullName" value="<%=resultset.getString("member_name")%>">
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="mobile">Mobile:</label> <input type="text"
													class="form-control" id="mobile" name="mobile" value="<%=resultset.getString("member_contact_no")%>" readonly>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="block">Block:</label> <input type="text"
													class="form-control" id="block" value="<%=resultset.getString("block")%>" readonly>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="flatNo">Flat No:</label> <input type="text"
													class="form-control" id="flatNo" name="flatNo" value="<%=resultset.getString("flat_no")%>" readonly>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="emergency-mobile">Emergency Contact No:</label>
												<input type="text" class="form-control"
													id="emergency-mobile" name="emergencyMobile" value="<%=resultset.getString("emergency_contact_no")%>">
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="totalFamilyMembers">Total Members of
													Family:</label> <input type="text" class="form-control"
													id="totalFamilyMembers" name="totalFamilyMembers" value="<%=resultset.getString("total_family_members")%>">
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="address">Permanent Address (If any):</label>
												<textarea class="form-control" id="address" name="address"><%=resultset.getString("permanent_address")%></textarea>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<input type="submit" class="btn btn-primary"
													value="Update Allotment"> <input type="reset"
													class="btn btn-danger" value="Cancel">
											</div>
										</div>
									</form>
								</div>
								<%
									}
								%>
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
