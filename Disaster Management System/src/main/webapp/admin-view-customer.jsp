<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.DatabaseConnection"%>
<html lang="en">
<!--<![endif]-->


<!-- Mirrored from templates.bwlthemes.com/blood_donation/v_2/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Jul 2022 14:37:50 GMT -->
<head>
<meta charset="utf-8">
<title>Disaster_Management_System</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description"
	content="Reddrop Buddies - Blood Donation Campaign & Multi-Concept Activism Template">
<meta name="author" content="xenioushk">
<link rel="shortcut icon" href="images/favicon.png" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

<!-- The styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css">
<link href="css/venobox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/styles.css" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Oswald&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Raleway:wght@200&family=Unica+One&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Coda&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Arima+Madurai&display=swap')
	;

body {
	font-family: 'Oswald', sans-serif !important;
}

.logo {
	padding-top: 9px !important;
	border: #1B2430 solid 2px;
}

.logo:hover {
	background-color: #1B2430;
}

.logo1 {
	padding-top: 9px !important;
	border: #FFFFDE solid 2px;
}

.logo1:hover {
	background-color: #06283D;
}

.sub-logo {
	padding: 4px;
}

.sub-logo1 {
	padding: 10px;
}

.navbar-nav li a {
	font-family: 'Unica One', cursive !important;
	font-size: 1.2vw !important;
}

.navbar-nav li a:hover {
	text-decoration: underline;
	text-underline-offset: 5px;
	color: #EB1D36 !important;
}

.top-bar {
	background-color: #1B2430 !important;
}
</style>
<body>




	<jsp:include page="admin-side-header.jsp"></jsp:include>
	<!--  HOME SLIDER BLOCK  -->

	<div id="preloader">
		<span class="margin-bottom"><img src="images/loader.gif" alt="" /></span>
	</div>



	<div class="container">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">
					<strong>Admin</strong>
				</h4>
			</div>
		</div>
		<div class="panel panel-info shadow p-3 mb-5">
			<div class="panel-heading">View Customer</div>
			<div class="panel-body">
			
			<table id="table" class="table table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th>UserName</th>
							<th>Email</th>
							<th>MObile</th>
							<th>Gender</th>
							<th>Dob</th>
							<th>Address</th>
							
							
						</tr>
					</thead>
					<tbody>
						<%
						ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer");
						while (resultset.next()) {
						%>

						<tr>
							<td><%=resultset.getInt("id")%></td>
							<td><%=resultset.getString("cname")%></td>
							<td><%=resultset.getString("email")%></td>
							<td><%=resultset.getString("mobile")%></td>
							<td><%=resultset.getString("gender")%></td>
							<td><%=resultset.getString("dob")%></td>
							<td><%=resultset.getString("address")%></td>
							
							
							
						</tr>

						<%
						}
						%>
					</tbody>
				</table>
										
									
						
					
			</div>
		</div>
	</div>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Back To Top Button  -->

	<a id="backTop">Back To Top</a>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.backTop.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/waypoints-sticky.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/venobox.min.js"></script>
	<script src="js/custom-scripts.js"></script>
</body>


</html>