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
				<h1 class="page-header">View Bill Details</h1>
				<ol class="breadcrumb">
					<li><a href="admin-dashboard.jsp">Home</a></li>
					<li><a href="admin-update-bill.msp">View Bill Details</a></li>
				</ol>
			</div>
			<div id="page-inner">
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="panel panel shadow p-3 mb-5 ">
								<div class="panel-heading bg-light"
									style="text-transform: uppercase">
									<strong>View Bill Details &nbsp;[&nbsp;<%=(new java.util.Date()).toLocaleString()%>&nbsp;]&nbsp;&nbsp;
									</strong>
								</div>
								<%
									int billNo = Integer.parseInt(request.getParameter("billId"));
									String block = request.getParameter("block");
									int flatNo = Integer.parseInt(request.getParameter("flatNo"));
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select a.member_name,a.member_contact_no,a.block,a.flat_no,a.emergency_contact_no,a.total_family_members,a.permanent_address,a.created_at,f.floor,f.flat_type,f.maintainence_charge,t.bill_id,t.light_unit_consumed,t.price_per_unit,t.total_unit_charges,t.final_bill_total,t.updated_at from tblallotments a,tblflats f,tblbills t where a.block=f.block and a.block='"+block+"' and a.flat_no='"+flatNo+"' and a.flat_no=f.flat_no and a.block=t.block and a.block='"+block+"' and a.flat_no='"+flatNo+"' and a.flat_no=t.flat_no and t.bill_id='"+billNo+"'");
									if (resultset.next()) {
								%>								
								<div class="panel-body">
										<div class="table">
											<table class="table table-bordered" id="dataTables-example">
												<tr>
													<th>Block</th>
													<td><%=block%></td>
													<th>Flat No</th>
													<td><%=flatNo%></td>
												</tr>
												<tr>
													<th colspan="4"><center><font color="blue">Allotments Details</font></center></th>
												</tr>
												<tr>
													<th>Name</th>
													<td><%=resultset.getString(1)%></td>
													<th>Mobile No</th>
													<td><%=resultset.getString(2)%></td>
												</tr>
												<tr>
													<th>Emergency Mobile No</th>
													<td><%=resultset.getString(5)%></td>
													<th>No of Family Members</th>
													<td><%=resultset.getString(6)%></td>
												</tr>
												<tr>
													<th>Address</th>
													<td colspan="3"><%=resultset.getString(7)%></td>
												</tr>
												<tr>
													<th>Block</th>
													<td><%=resultset.getString(3)%></td>
													<th>Flat No</th>
													<td><%=resultset.getString(4)%></td>
												</tr>
												<tr>
													<th>Floor</th>
													<td><%=resultset.getString(9)%></td>
													<th>Flat Type</th>
													<td><%=resultset.getString(10)%></td>
												</tr>
												<tr>
													<th>Maintainence Charge</th>
													<td><%=resultset.getString(11)%></td>
													<th>Allotment Dates</th>
													<td><%=resultset.getString(8)%></td>
												</tr>
											</table>
										</div>
										<div class="table">
											<table class="table table-bordered" id="dataTables-example">
												<tr>
													<th colspan="4"><center><font color="blue">Electricity Bill Details</font></center></th>
												</tr>
												<tr>
													<th>Bill No</th>
													<td><%=resultset.getString(12)%></td>
													<th>Bill Date</th>
													<td><%=resultset.getString(17)%></td>
												</tr>
												<tr>
													<th>Electricity Unit Consumed</th>
													<td><%=resultset.getString(13)%></td>
													<th>Price Per Unit Of Electricity</th>
													<td><%=resultset.getString(14)%>&nbsp;[Price Per Unit]</td>
												</tr>
												<tr>
													<th>Electricity Charged</th>
													<td><%=resultset.getString(15)%></td>
													<th>Maintainence Charge</th>
													<td><%=resultset.getString(11)%></td>
												</tr>
												<tr>
													<th>Final Total Bill</th>
													<td colspan="3"><font color="blue"><%=resultset.getString(16)%>&nbsp;Rs/- Only</font></td>
												</tr>
											</table>
										</div>
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
