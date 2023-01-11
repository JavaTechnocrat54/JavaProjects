<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
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

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<div class="container-xxl bg-white p-0">
		<jsp:include page="header.jsp"></jsp:include>
		<!-- Header Start -->

		<br> <br> <br>

		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">Customer Login</strong>
					</div>
				</div>
			</div>
		</div>
		<div class="site-section">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<img src="img/login.png" style="width: 550px; height: 300px;"></img>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="panel panel-warning shadow p-3 mb-5">
							<div class="panel-heading">Customer Login</div>
							<div class="panel-body">
								<%
								String credential = (String) session.getAttribute("credential");
								if (credential != null) {
									session.removeAttribute("credential");
								%>
								<div class="alert alert-danger" id="danger">You have enter
									wrong credentials.</div>
								<%
								}
								%>
								<%
								String captchaCode = (String) session.getAttribute("verificationCode");
								if (captchaCode != null) {
									session.removeAttribute("verificationCode");
								%>
								<div class="alert alert-info" id="info">You have enter
									wrong verification code.</div>
								<%
								}
								%>
								<form action="CustomerLogin" method="post">
									<div class="form-group">
										<label for="uname">User Name:</label> <input type="text"
											class="form-control" id="uname" placeholder="Enter username"
											name="uname" required>
									</div>
									<div class="form-group">
										<label for="upass">Password:</label> <input type="password"
											class="form-control" id="upass" placeholder="Enter password"
											name="upass" required maxlength="12">
									</div>
									<%
									String captcha = null;
									Connection connection = DatabaseConnection.getConnection();
									Statement statement = connection.createStatement();
									ResultSet resultset = statement.executeQuery("select captcha from tblcaptcha");
									if (resultset.next()) {
										captcha = resultset.getString(1);
									}
									%>

									<div class="row">
										<div class="col-sm-6">
											<label for="vercode">Verification Code:</label> <input
												type="password" class="form-control" id="vercode"
												placeholder="Enter captcha code here" name="vercode">
										</div>
										<div class="col-sm-6">
											<label for="vercode">Copy the Code:</label><br>
											<h5><%=captcha%></h5>

										</div>
									</div>
									<button type="submit" value="Login" class="btn btn-primary">
										<span class="glyphicon glyphicon-log-in"></span> Login
									</button>
									<input type="reset" class="btn btn-danger" value="Cancel">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<br>
	<br>
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