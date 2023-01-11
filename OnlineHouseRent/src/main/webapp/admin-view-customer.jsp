<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Makaan</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="fontawesome/all.css" rel="stylesheet">
<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<div class="container-xxl bg-white p-0">
		<jsp:include page="admin-header.jsp"></jsp:include>
		<!-- Header Start -->

		<br> <br>


		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row pad-botm">
					<div class="col-md-12">
						<h4 class="header-line">View Customers</h4>

					</div>

				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-success">
							<div class="panel-heading">View Customers</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>#</th>
												<th>Name</th>
												<th>Email-Id</th>
												<th>Gender</th>
												<th>Mobile</th>
												<th>Address</th>
												<th>Register At</th>
												<th>Action</th>
											</tr>
										</thead>
										<%
										Connection connection = DatabaseConnection.getConnection();
										Statement statement = connection.createStatement();
										ResultSet resultSet = statement.executeQuery("select * from tblcustomer");
										while (resultSet.next()) {
										%>
										<tbody>
											<tr>
												<td><%=resultSet.getInt(1)%></td>
												<td><%=resultSet.getString("full_name")%></td>
												<td><%=resultSet.getString("email_id")%></td>
												<td><%=resultSet.getString("gender")%></td>
												<td><%=resultSet.getString("mobile_no")%></td>
												<td><%=resultSet.getString("address")%></td>
												<td><%=resultSet.getString("created_at")%></td>
												<td><a
													href="admin-delete-customers.jsp?id=<%=resultSet.getInt(1)%>"
													class="btn btn-danger"
													onclick="return confirm('Are you sure Do you want to delete this customer?');">Delete
														Record</a></td>
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
				</div>
			</div>

		</div>
		<br> <br>
		<jsp:include page="footer.jsp"></jsp:include>


		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>

</html>