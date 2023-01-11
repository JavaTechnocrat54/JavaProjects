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
					<h4>
						<i class="fa fa-bullseye"></i> Add Product
					</h3>
				</div>
			</div>

			<div class="clearfix"></div>
			<%
				String message = (String) session.getAttribute("message");
			if (message != null) {
				session.removeAttribute("message");
			%>
			<div class="alert alert-success" id="success">Medicine added
				successfully.</div>
			<%
				}
			%>
			<div class="x_panel">
				<div class="x_title">
					<h2>Product  Information</h2>
					<div class="clearfix"></div>
				</div>
				<%
					String medicine = (String) session.getAttribute("message");
					if (medicine != null) {
						session.removeAttribute("message");
				%>
				<div class="alert alert-info" id="info">New medicine added successfully.</div>
				<%
					}
				%>
				<div class="x_content shadow p-3 mb-5">
					<form role="form" action="FarmerAddProduct" method="post"
						>
						<div class="form-row">
							<%
								
						int id=(int)session.getAttribute("customerId");
							%>
							<div class="col-md-6 col-sm-6">
							
								<div class="form-group">
									<label>Product Id</label> <input class="form-control"
										type="text" name="productId" value="<%=id%>" readonly>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="form-group">
									<label>Select Product</label> <select
										class="form-control" name="mType">
										<option value="null">Chose Product</option>
										<%
										String Product=" ";
										ResultSet rs=DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
										while(rs.next()){
											Product= rs.getString("medicine_name");
											
										%>
										<option><%=Product%></option>
										
										<%} %>
									</select>
									
								</div>
							</div>
						</div>
						<div class="form-row">
							
								
							</div>
							
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label>Quantity</label> <input class="form-control" type="text"
										name="mQuantity" placeholder="Enter In Kg/Liter">
								</div>
							</div>
							
						
						<div class="form-row">
							<div class="col-md-12 col-sm-12">
								<div class="form-group">
								<%
										
										ResultSet rs1=DatabaseConnection.getResultFromSqlQuery("select * from tblfarmer where id='"+session.getAttribute("customerId")+"'");
										if(rs1.next()){
											String	address= rs1.getString(6);
										
										%>
									<label>Address</label>
									<textarea class="form-control" name="address"
										><%=address%></textarea>
										<%} %>
								</div>
							</div>
						</div>
						
						
						<div class="form-row">
							<div class="col-md-12 col-sm-12 ">
								<button type="submit" class="btn btn-info" value="">Add
									Product</button>
								<input type="reset" class="btn btn-danger" name="Clear">
							</div>
						</div>
					</form>
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
	
	
	
	
	