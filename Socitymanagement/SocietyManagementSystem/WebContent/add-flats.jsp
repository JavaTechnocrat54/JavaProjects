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
				<h1 class="page-header">Add Flats</h1>
				<ol class="breadcrumb">
					<li><a href="admin-dashboard.jsp">Home</a></li>
					<li><a href="add-flats.jsp">Add Flats</a></li>
				</ol>
			</div>
			<div id="page-inner">
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="panel panel shadow p-3 mb-5 ">
								<div class="panel-heading bg-light"
									style="text-transform: uppercase">
									<strong>Add Flat &nbsp;[&nbsp;<%=(new java.util.Date()).toLocaleString()%>&nbsp;]&nbsp;&nbsp;
									</strong>
								</div>
								<%
									int flatNo = DatabaseConnection.generateFlatId();
								%>
								<div class="panel-body">
									<%
										String addFlat = (String) session.getAttribute("add-flat");
										if (addFlat != null) {
											session.removeAttribute("add-flat");
									%>
									<div class="alert alert-success" id="success">Flat added
										sucessfully.</div>
									<%
										}
									%>
									<form action="AddFlat" method="post">
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="flatNo">Flat No:</label> <input type="text"
													class="form-control" id="flatNo" name="flatNo"
													placeholder="Flat No" value="<%=flatNo%>" readonly>
											</div>

										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="floor">Floor:</label> <input type="text"
													class="form-control" id="floor" name="floor"
													placeholder="Floor" required>
											</div>

										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="block">Block:</label> <select
													class="form-control" id="block" name="block"
													placeholder="Block" required><option>Choose
														Block</option>
													<option>A</option>
													<option>B</option>
													<option>C</option>
													<option>D</option>
													<option>E</option>
													<option>F</option>
													<option>G</option>
													<option>H</option>
													<option>I</option>
													<option>J</option>
													<option>K</option>
													<option>L</option>
													<option>M</option>
													<option>N</option>
													<option>O</option>
													<option>P</option>
													<option>Q</option>
													<option>R</option>
													<option>S</option>
													<option>T</option>
													<option>U</option>
													<option>V</option>
													<option>W</option>
													<option>X</option>
													<option>Y</option>
													<option>Z</option></select>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="ftype">Flat Type:</label> <select
													class="form-control" id="ftype" name="ftype"
													placeholder="ftype" required><option>Choose
														Flat Type</option>
													<option>1 BHK</option>
													<option>2 BHK</option>
													<option>3 BHK</option>
													<option>4 BHK</option>
													<option>5 BHK</option>
													<option>Duplex</option></select>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<label for="mcharge">Maintainance Charge:</label> <input
													type="text" class="form-control" id="mcharge"
													name="mcharge" placeholder="Maintainance Charge" required>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-12">
												<input type="submit" class="btn btn-primary"
													value="Add Flat"> <input type="reset"
													class="btn btn-danger" value="Cancel">
											</div>
										</div>
									</form>
								</div>
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
