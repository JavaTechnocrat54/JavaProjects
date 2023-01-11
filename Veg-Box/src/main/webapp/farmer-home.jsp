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
	<div class="owl-carousel owl-single px-0">
			<div class="site-blocks-cover overlay"
				style="background-image: url('images/banner-1.png');">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 mx-auto align-self-center">
							<div class="site-block-cover-content text-center">
								<h1 class="mb-0">VEGBOX Opens 24 Hours</h1>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="site-blocks-cover overlay"
				style="background-image: url('images/banner-2.png');">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 mx-auto align-self-center">
							<div class="site-block-cover-content text-center">
								<h1 class="mb-0">Fresh Vegetable Everyday</h1>
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
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>
	
	
	
	
	