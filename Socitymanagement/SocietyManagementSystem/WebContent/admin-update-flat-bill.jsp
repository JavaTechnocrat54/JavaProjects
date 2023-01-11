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
				<h1 class="page-header">Flat Bill</h1>
				<ol class="breadcrumb">
					<li><a href="admin-dashboard.jsp">Home</a></li>
					<li><a href="admin-update-bill.msp">Flat Bill </a></li>
				</ol>
			</div>
			<div id="page-inner">
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="panel panel shadow p-3 mb-5 ">
								<div class="panel-heading bg-light"
									style="text-transform: uppercase">
									<strong>Flat Bill &nbsp;[&nbsp;<%=(new java.util.Date()).toLocaleString()%>&nbsp;]&nbsp;&nbsp;
									</strong>
								</div>
								<%
									String block = (String) session.getAttribute("block");
									int flatNo = Integer.parseInt(request.getParameter("flatNo"));
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select a.member_name,a.member_contact_no,a.block,a.flat_no,a.emergency_contact_no,a.total_family_members,a.permanent_address,a.created_at,f.floor,f.flat_type,f.maintainence_charge from tblallotments a,tblflats f where a.block=f.block and a.block='"
										+ block + "' and a.flat_no='" + flatNo + "' and a.flat_no=f.flat_no");
									if (resultset.next()) {
								%>
								<form action="GenerateBill" method="post">
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
													<th colspan="4"><center>Allotments Details</center></th>
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
													<td><input type="text" name="block"
														value="<%=resultset.getString(3)%>" class="form-control"></td>
													<th>Flat No</th>
													<td><input type="text" name="flat_no"
														value="<%=resultset.getString(4)%>" class="form-control"></td>
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
													<th>Electricity Unit Consumed</th>
													<td><input type="text" name="luc" class="form-control"
														id="luc"></td>
												</tr>
												<tr>
													<th>Price Per Unit Of Electricity</th>
													<td><input type="text" name="ppuoe"
														class="form-control" id="ppuoe" onkeyup="myFunction()"></td>
												</tr>
												<tr>
													<th>Electricity Charged</th>
													<td><input type="text" name="electCharge"
														class="form-control" id="electCharge"></td>
												</tr>
												<tr>
													<th>Maintainence Charge</th>
													<td><input type="text" class="form-control"
														name="maitainaceCharge"
														value="<%=resultset.getString(11)%>" readonly></td>
												</tr>
											</table>
										</div>
										<div class="form-row">
											<div class="form-group col-md-4"></div>
											<div class="form-group col-md-4">
												<input type="submit" class="btn btn-primary" value="Submit">
											</div>
											<div class="form-group col-md-4"></div>
										</div>
									</div>
								</form>
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
	<script type="text/javascript">
		function myFunction(vatid) {

			var myBox2 = parseFloat(document.getElementById('ppuoe').value);
			var myBox1 = parseFloat(document.getElementById('luc').value);

			var result = document.getElementById('electCharge');

			var myResult = myBox2 * myBox1;

			result.value = myResult;

			document.getElementById("electCharge").value = myResult;
		}
	</script>
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
