<%@page import="com.connection.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>VEGE-BOX</title>
<link rel="icon" href="images/vegetable-box-logo.jpg" sizes="32x32"
	type="image/png">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">


<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body>
	<div class="site-wrap">
		<div class="site-navbar py-2">
			<div class="search-wrap">
				<div class="container-fluid">
					<a href="#" class="search-close js-search-close"><span
						class="icon-close2"></span></a>
					<form action="#" method="post">
						<input type="text" class="form-control"
							placeholder="Search keyword and hit enter...">
					</form>
				</div>
			</div>
			<div class="container">
<div class="d-flex align-items-center justify-content-between">
	<div class="logo">
		<div class="site-logo">
		<i class="fa-solid fa-carrot"></i>
			<a href="index.jsp" class="js-logo-clone"><img alt="" src="images/vegetable-box-logo.jpg" width="90" height="40">
			<strong class="text-primary" >VEGBOX</strong></a>
		</div>
	</div>
	<%
		if ((String) session.getAttribute("uname") != null) {
	%>
	<div class="main-nav d-none d-lg-block">
		<nav class="site-navigation text-right text-md-center "
			role="navigation">
			<ul class="site-menu js-clone-nav d-none d-lg-block">
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="farmer-sell-product.jsp">Sell Product</a></li>
				<li ><a href="farmer-view-sell.jsp">View SellStatus</a>
					
				<li class="has-children"><a href="#"><%=session.getAttribute("uname")%></a>
					<ul class="dropdown">
						
						<li><a href="farmer-profile.jsp">My Profile</a></li>
						<li><a href="farmer-change-password.jsp">Change
								Password</a></li>
						<li><a href="logout.jsp">Logout</a></li>
					</ul>
			</ul>
		</nav>
	</div>
	</div>
	</div>
	</div>
	</div>
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						<i class="fa fa-medkit"></i> Product
					</h3>
				</div>
			</div>
			<div class="clearfix"></div>
			<%
				String editmessage = (String) session.getAttribute("success");
				if (editmessage != null) {
				session.removeAttribute("success");
			%>
			<div class="alert alert-info" id="info">Product information updated.</div>
			<%
				}
			%>
			<%
				String deleteMedicine = (String) session.getAttribute("medicine");
				if (deleteMedicine != null) {
				session.removeAttribute("medicine");
			%>
			<div class="alert alert-danger" id="danger">Product deleted.</div>
			<%
				}
			%>
			<div class="row">
				<div class="col-md-12 col-sm-12  ">
					<div class="x_panel">
						<div class="x_title">
							<h2>List of Product</h2>
							<ul class="nav navbar-right panel_toolbox">
								<a href="admin-add-product.jsp"
									class="btn btn-sm btn-info text-white"><i
									class="fa fa-plus"></i> Add Product</a>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<table id="datatable" class="table table-striped table-bordered"
								style="width: 100%">
								<thead>
									<tr>
										<tr>
										<th>sailerId</th>
										
										<th>Name</th>
										<th>Quantity</th>
										<th>address</th>
										<th>Price in kg/lit</th>
										<th>Processing Fee</th>
										<th>Total</th>
										<th>Status</th>
										
									</tr>
								</thead>

								<%
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblsell");
									while (resultset.next()) {
								%>
								<tbody>
									<tr>
										<td><%=resultset.getInt("sellid")%></td>
										
										<td><%=resultset.getString("type")%></td>
										<td><%=resultset.getString("quantity")%></td>
										<td><%=resultset.getString("address")%></td>
										<td><%=resultset.getDouble("price")%></td>
										<td><%=resultset.getDouble("pf")%></td>
										<td><%=resultset.getDouble("total") %></td>
										<td><%=resultset.getString("status")%></td>
									
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
		
		<footer class="site-footer bg-light">
			<jsp:include page="front-side-footer.jsp"></jsp:include>
		</footer>
	</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/main.js"></script>
	<%
	}else{
	response.sendRedirect("farmer-login.jsp");
	}
	%>
</body>
</html>
	
	
	
	
	