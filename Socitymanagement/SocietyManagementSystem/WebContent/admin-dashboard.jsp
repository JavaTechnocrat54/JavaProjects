<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Society Management System</title>
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">
</head>
<body>
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<div id="wrapper">
		<jsp:include page="admin-header.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">
					Dashboard <small>Society Management System</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active"><a href="#">Dashboard</a></li>
				</ol>

			</div>
			<div id="page-inner">
				<div class="row">
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-right">
								<%
									int tolalFlats=0;
									ResultSet resultFlats=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblflats");
									resultFlats.next();
									tolalFlats=resultFlats.getInt(1);
								%>
								<h3><font color="#FF9933"><%=tolalFlats%></font></h3>
								<strong>Total Flats</strong>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-right">
								<%
									int tolalBills=0;
									ResultSet resultBills=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblbills");
									resultBills.next();
									tolalBills=resultBills.getInt(1);
								%>
								<h3><font color="#FF9933"><%=tolalBills%></font></h3>
								<strong> Total Bills</strong>

							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-right">
								<%
									int tolalAllotments=0;
									ResultSet resultAllotments=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblallotments");
									resultAllotments.next();
									tolalAllotments=resultAllotments.getInt(1);
								%>
								<h3><font color="#FF9933"><%=tolalAllotments%></font></h3>
								<strong> Total Allotments </strong>

							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-right">
								<%
									int tolalVisitors=0;
									ResultSet resultVisitors=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblvisitors");
									resultVisitors.next();
									tolalVisitors=resultVisitors.getInt(1);
								%>
								<h3><font color="#FF9933"><%=tolalVisitors %></font></h3>
								<strong>Total Visitors</strong>

							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-right">
								<%
									int tolalContacts=0;
									ResultSet resultContacts=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcontact");
									resultContacts.next();
									tolalContacts=resultContacts.getInt(1);
								%>
								<h3><font color="#FF9933"><%=tolalContacts%></font></h3>
								<strong>Total Contacts</strong>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-right">
								<%
									int tolalComplaints=0;
									ResultSet resultComplaints=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcomplaints");
									resultComplaints.next();
									tolalComplaints=resultComplaints.getInt(1);
								%>
								<h3><font color="#FF9933"><%=tolalComplaints%></font></h3>
								<strong>Total Complaints</strong>

							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-right">
								<%
									int tolalPendingsComplaints=0;
									ResultSet resultComplaintsPending=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcomplaints where complaint_status='In Progress'");
									resultComplaintsPending.next();
									tolalPendingsComplaints=resultComplaintsPending.getInt(1);
								%>
								<h3><font color="#FF9933"><%=tolalPendingsComplaints%></font></h3>
								<strong>Pending Complaints </strong>

							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-right">
								<%
									int tolalResolvedComplaints=0;
									ResultSet resultResolvedComplaints=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcomplaints where complaint_status='Resolved'");
									resultResolvedComplaints.next();
									tolalResolvedComplaints=resultResolvedComplaints.getInt(1);
								%>
								<h3><font color="#FF9933"><%=tolalResolvedComplaints%></font></h3>
								<strong>Resolved Complaints</strong>

							</div>
						</div>
					</div>
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
	<!-- Morris Chart Js -->
	<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="assets/js/morris/morris.js"></script>


	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>

	<script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>