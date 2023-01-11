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
				<h1 class="page-header">View Complaints</h1>
				<ol class="breadcrumb">
					<li><a href="admin-dashboard.jsp">Home</a></li>
					<li><a href="#">View
							Complaint</a></li>
				</ol>
			</div>
			<div id="page-inner">
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="panel panel shadow p-3 mb-5 ">
								<div class="panel-heading bg-light"
									style="text-transform: uppercase">
									<strong>View Complaints &nbsp;[&nbsp;<%=(new java.util.Date()).toLocaleString()%>&nbsp;]&nbsp;&nbsp;
									</strong>
								</div>
								<%
									int complaintId = Integer.parseInt(request.getParameter("compId"));
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcomplaints where complaint_id='" + complaintId + "'");
									if (resultset.next()) {
								%>
								<div class="panel-body">
									<form action="ComplaintAction" method="post">
										<div class="form-row">
											<div class="form-group col-md-6">
												<label for="compId">Complaint Id:</label> <input type="text"
													class="form-control" id="compId" name="compId"
													value="<%=resultset.getInt("complaint_id")%>" readonly>
											</div>
											<div class="form-group col-md-6">
												<label for="compType">Complaint Type:</label> <input
													type="text" class="form-control" id="compType"
													name="compType"
													value="<%=resultset.getString("complaint_type")%>" readonly>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-6">
												<label for="compDesc">Complaint Description:</label> <input
													type="text" class="form-control" id="compDesc"
													name="compDesc"
													value="<%=resultset.getString("complaint_description")%>"
													readonly>
											</div>
											<div class="form-group col-md-6">
												<label for="compDate">Complaint Raised Date:</label> <input
													type="text" class="form-control" id="compDate"
													name="compDate"
													value="<%=resultset.getString("created_at")%>" readonly>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-6">
												<label for="block">Block:</label> <input type="text"
													class="form-control" id="block" name="block"
													value="<%=resultset.getString("block")%>" readonly>
											</div>
											<div class="form-group col-md-6">
												<label for="flatNo">Flat No:</label> <input type="text"
													class="form-control" id="flatNo" name="flatNo"
													value="<%=resultset.getString("flat_no")%>" readonly>
											</div>
										</div>

										<div class="form-row">
											<div class="form-group col-md-6">
												<label for="raisedBy">Complaint Raised By:</label> <input
													type="text" class="form-control" id="raisedBy"
													name="raisedBy"
													value="<%=resultset.getString("member_name")%>" readonly>
											</div>
											<div class="form-group col-md-6">
												<label for="compStatus">Complaint Status:</label> <input
													type="text" class="form-control" id="compStatus"
													name="compStatus"
													value="<%=resultset.getString("complaint_status")%>"
													readonly>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="remark">Admin Remark:</label>
												<textarea type="text" class="form-control" id="remark"
													name="remark"></textarea>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="statusAction">Status Action:</label> <select
													type="text" class="form-control" id="statusAction"
													name="statusAction">
													<option>In Progress</option>
													<option>Resolved</option>
												</select>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<input type="submit" class="btn btn-primary"
													value="Solve Issue"> <input type="reset"
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
