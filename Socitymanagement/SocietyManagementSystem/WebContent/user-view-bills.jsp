<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!doctype html>
<html lang="en">
<head>
<title>Society Management System</title>
<!-- DataTables -->
<link href="../plugins/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link href="../plugins/datatables/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<!-- Responsive datatable examples -->
<link href="../plugins/datatables/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<!-- Multi Item Selection examples -->
<link href="../plugins/datatables/select.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />

<!-- Switchery css -->
<link href="../plugins/switchery/switchery.min.css" rel="stylesheet" />

<!-- Bootstrap CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<!-- App CSS -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />

<!-- Modernizr js -->
<script src="assets/js/modernizr.min.js"></script>
</head>
<body>
	<%
		if (session.getAttribute("flatNo") != null && session.getAttribute("flatNo") != "") {
	%>
	<div class="wrapper">
		<jsp:include page="user-side-header.jsp"></jsp:include><br>
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card-box">
						<h4 class="m-t-0 header-title">View Bills</h4>
						<table id="datatable"
							class="table table-bordered dt-responsive nowrap"
							style="border-collapse: collapse; border-spacing: 0; width: 100%;">
							<thead>
								<tr>
									<th>Bill Id</th>
									<th>Block</th>
									<th>Flat No</th>
									<th>Maintainence Charges</th>
									<th>Created At</th>
									<th>Updated At</th>
									<th>Action</th>
								</tr>
							</thead>
							<%
								ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblbills where block='"+session.getAttribute("block")+"' and flat_no='"+session.getAttribute("flatNo")+"'");
								while (resultset.next()) {
							%>
							<tbody>
								<tr>
									<td><%=resultset.getInt("bill_id")%></td>
									<td><%=resultset.getString("block")%></td>
									<td><%=resultset.getString("flat_no")%></td>
									<td><%=resultset.getString("maintainence_charge")%></td>
									<td><%=resultset.getString("created_at")%></td>
									<td><%=resultset.getString("updated_at")%></td>
									<td><a href="user-view-bill-details.jsp?billId=<%=resultset.getInt("bill_id")%>&block=<%=resultset.getString("block")%>&flatNo=<%=resultset.getString("flat_no")%>">View
											Bill Details</a></td>
								</tr>
							</tbody>
							<%
								}
							%>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- container -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!-- End wrapper -->


	<!-- jQuery  -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/waves.js"></script>
	<script src="assets/js/jquery.nicescroll.js"></script>
	<script src="../plugins/switchery/switchery.min.js"></script>

	<!-- Required datatable js -->
	<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="../plugins/datatables/dataTables.bootstrap4.min.js"></script>
	<!-- Buttons examples -->
	<script src="../plugins/datatables/dataTables.buttons.min.js"></script>
	<script src="../plugins/datatables/buttons.bootstrap4.min.js"></script>
	<script src="../plugins/datatables/jszip.min.js"></script>
	<script src="../plugins/datatables/pdfmake.min.js"></script>
	<script src="../plugins/datatables/vfs_fonts.js"></script>
	<script src="../plugins/datatables/buttons.html5.min.js"></script>
	<script src="../plugins/datatables/buttons.print.min.js"></script>

	<!-- Key Tables -->
	<script src="../plugins/datatables/dataTables.keyTable.min.js"></script>

	<!-- Responsive examples -->
	<script src="../plugins/datatables/dataTables.responsive.min.js"></script>
	<script src="../plugins/datatables/responsive.bootstrap4.min.js"></script>

	<!-- Selection table -->
	<script src="../plugins/datatables/dataTables.select.min.js"></script>

	<!-- App js -->
	<script src="assets/js/jquery.core.js"></script>
	<script src="assets/js/jquery.app.js"></script>

	<script>
		$(document).ready(
				function() {

					// Default Datatable
					$('#datatable').DataTable();

					//Buttons examples
					var table = $('#datatable-buttons').DataTable({
						lengthChange : false,
						buttons : [ 'copy', 'excel', 'pdf' ]
					});

					// Key Tables

					$('#key-table').DataTable({
						keys : true
					});

					// Responsive Datatable
					$('#responsive-datatable').DataTable();

					// Multi Selection Datatable
					$('#selection-datatable').DataTable({
						select : {
							style : 'multi'
						}
					});

					table.buttons().container().appendTo(
							'#datatable-buttons_wrapper .col-md-6:eq(0)');
				});
	</script>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>