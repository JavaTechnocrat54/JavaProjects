<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Medico</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
   <link rel="icon" href="img/favicon.png">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
   <jsp:include page="header.jsp"></jsp:include>
   <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Admin Login</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">Login</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
     
<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<img src="img/adminlogin.png" style="width: 400px; margin-top: 1px"></img>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="panel panel-info shadow p-3 mb-5">
					<div class="panel-heading">Admin Login</div>
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
						<div class="alert alert-info" id="info">You have enter wrong
							verification code.</div>
						<%
						}
						%>
						
						<form action="AdminLogin" method="post">
							<div class="form-group">

								<label for="uname">Email_Id:</label> <input type="email"
									class="form-control" id="uname" placeholder="Enter username"
									name="email">
							</div>
							<div class="form-group">
								<label for="upass">Password:</label> <input type="password"
									class="form-control" id="upass" placeholder="Enter password"
									name="upass" required oninput="limitChar(this)" maxlength="12">
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
							<div class="form-group">
								<label for="vercode">Verification Code:</label> <input
									type="text" class="form-control" id="vercode"
									placeholder="Enter captcha code here" name="vercode" required>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="" name="captcha"
									value="<%=captcha%>" readonly>
							</div>
							<input type="submit" value="Login" class="btn btn-primary">
							<input type="reset" class="btn btn-danger" value="Cancel">
							<a href="customerRegister.jsp">Click here to new customer
								account.</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

   <jsp:include page="footer.jsp"></jsp:include>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>