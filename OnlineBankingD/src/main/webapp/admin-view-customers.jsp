<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="zxx">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>APANA BANK</title>
<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css2?family=Poppins:wght@300;600;700&display=swap"
	rel="stylesheet">
<!-- google fonts -->
<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style-starter.css">
<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script> -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!-- Template CSS -->
</head>

<body>
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<!--header-->
	<header id="site-header" class="fixed-top">
		<div class="container-fluid">
			<jsp:include page="admin-side-header.jsp"></jsp:include>
		</div>
	</header>
	<!-- //header -->
	<!-- about breadcrumb -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container-fluid">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">
					<strong>View Customers</strong>
				</h4>
			</div>
		</div>
		<div class="panel panel-warning shadow p-3 mb-5">
			<div class="panel-heading">View Customers</div>
			<div class="panel-body">
				<div class="table-responsive table-bordered">
					<table class="table">
						<thead>
							<tr>
								<th>AccountNumber</th>
								<th>Full Name</th>
								<th>Email Id</th>
								<th>Mobile No</th>
								<th>Gender</th>
								<th>City</th>
								<th>State</th>
								<th>Country</th>
								<th>Pincode</th>
								<th>Status</th>
								<th>Action</th>
							</tr>
						</thead>
						<%
							ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer");
						while (resultset.next()) {
						%>
						<tbody>
							<tr>
								<td><%=resultset.getLong("accountno")%></td>
								<td><%=resultset.getString("name")%></td>
								<td><%=resultset.getString("email")%></td>
								<td><%=resultset.getString("mobile")%></td>
								<td><%=resultset.getString("gender")%></td>
								<td><%=resultset.getString("city")%></td>
								<td><%=resultset.getString("state")%></td>
								<td><%=resultset.getString("country")%></td>
								<td><%=resultset.getString("pincode")%></td>
								<%
								
								if (resultset.getString("status").equals("new")) {
							%>
							<td><span class="label label-Info">New</span></td>
							<%
								}else if (resultset.getString("status").equals("unblock")) {
											%>
											<td><span class="label label-success">Unblock</span></td>
											<%
											} else {
											%>
											<td><span class="label label-danger">Block</span></td>
											<%
											}
								
											%>
											<%
											if (resultset.getString("status").equals("unblock")) {
											%>
											<td><a
												href="CustomerStatus?accountno=<%=resultset.getLong(1)%>"><button
														class="btn btn-danger"
														onClick="return confirm('Are you sure, You want to Block The Customer?');">Block</button></a></td>
											<%
											} else {
											%>
											<td><a
												href="CustomerStatus?accountno=<%=resultset.getLong(1)%>"><button
														class="btn btn-primary"
														onClick="return confirm('Are you sure, You  want to UNBlock The Customer?');">Unblock</button></a></td>
											<%
											}
											%>
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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>
	<!-- //footer-29 block -->
	<!-- disable body scroll which navbar is in active -->
	<script>
		$(function() {
			$('.navbar-toggler').click(function() {
				$('body').toggleClass('noscroll');
			})
		});
	</script>
	<!-- disable body scroll which navbar is in active -->

	<!-- Template JavaScript -->
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script src="assets/js/theme-change.js"></script>
	<!--/MENU-JS-->
	<script>
		$(window).on("scroll", function() {
			var scroll = $(window).scrollTop();

			if (scroll >= 80) {
				$("#site-header").addClass("nav-fixed");
			} else {
				$("#site-header").removeClass("nav-fixed");
			}
		});

		//Main navigation Active Class Add Remove
		$(".navbar-toggler").on("click", function() {
			$("header").toggleClass("active");
		});
		$(document).on("ready", function() {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
			$(window).on("resize", function() {
				if ($(window).width() > 991) {
					$("header").removeClass("active");
				}
			});
		});
	</script>
	<!--//MENU-JS-->

	<script src="assets/js/bootstrap.min.js"></script>
	<%
		} else {
		response.sendRedirect("admin-login.jsp");
	 }
	%>
</body>
</html>