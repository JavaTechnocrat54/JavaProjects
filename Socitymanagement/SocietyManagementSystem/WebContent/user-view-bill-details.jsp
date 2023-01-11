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

<!-- Modernizr js -->

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

						<h4 class="page-title">Total Bill</h4>
					</div>
				</div>
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-12">
					<div class="card-box">
						<%
							int billNo = Integer.parseInt(request.getParameter("billId"));
							ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select a.member_name,a.member_contact_no,a.block,a.flat_no,a.emergency_contact_no,a.total_family_members,a.permanent_address,a.created_at,f.floor,f.flat_type,f.maintainence_charge,t.bill_id,t.light_unit_consumed,t.price_per_unit,t.total_unit_charges,t.final_bill_total,t.updated_at from tblallotments a,tblflats f,tblbills t where a.block=f.block and a.block='"
								+ session.getAttribute("block") + "' and a.flat_no='" + session.getAttribute("flatNo")
								+ "' and a.flat_no=f.flat_no and a.block=t.block and a.block='" + session.getAttribute("block")
								+ "' and a.flat_no='" + session.getAttribute("flatNo") + "' and a.flat_no=t.flat_no and t.bill_id='"
								+ billNo + "'");
							if (resultset.next()) {
						%>
						<div class="panel-body">
							<div class="table">
								<table class="table table-bordered" id="dataTables-example">
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
										<th colspan="4"><center>
												<font color="blue">Electricity Bill Details</font>
											</center></th>
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
										<td colspan="3"><font color="blue"><%=resultset.getString(16)%>&nbsp;Rs/-
												Only</font></td>
									</tr>
								</table>
							</div>
						</div>
						<%
							}
						%>
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
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>
