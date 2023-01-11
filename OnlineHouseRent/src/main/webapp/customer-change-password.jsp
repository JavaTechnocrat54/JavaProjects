<!DOCTYPE html>
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
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
       <jsp:include page="header.jsp"></jsp:include>
        <!-- Header Start -->
        <%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
<br><br>

<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="index.jsp">Home</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">Change Password</strong>
					</div>
				</div>
			</div>
		</div>
		<div class="site-section">
		<br>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<img src="img/change_password.jpg"
							style="width: 550px; height: 300px;"></img>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="panel panel-warning shadow p-3 mb-5">
							<div class="panel-heading">Customer Change Password</div>
							<div class="panel-body">
								<%
									String message = (String) session.getAttribute("password-change-success");
									if (message != null) {
										session.removeAttribute("password-change-success");
								%>
								<div class='alert alert-success' id='success'>Password
									change successfully.</div>
								<%
									}
								%>
								<%
									String fail = (String) session.getAttribute("password-change-fail");
									if (fail != null) {
										session.removeAttribute("password-change-fail");
								%>
								<div class="alert alert-danger" id='danger'>Old password
									does not match..</div>
								<%
									}
								%>
								<%
									String passwordConfirm = (String) session.getAttribute("password-not-match");
									if (passwordConfirm != null) {
										session.removeAttribute("password-not-match");
								%>
								<div class="alert alert-warning" id='danger'>New password
									and confirm password does not match.</div>
								<%
									}
								%>
								<form action="CustomerChangePassword" method="post">
									<%
										ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer where uname='"+ session.getAttribute("uname") + "' and email_id='" + session.getAttribute("email") + "'");
										if (resultset.next()) {
									%>
									<div class="form-group">
										<label for="cpassword">Current Password:</label> <input
											type="text" class="form-control" id="cpassword"
											placeholder="Current Password" name="cpassword"
											value="<%=resultset.getString("upass")%>" readonly>
									</div>
									<div class="form-group">
										<label for="password">New Password:</label> <input
											type="password" class="form-control" id="password"
											placeholder="New Password" name="password" required>
									</div>

									<div class="form-group">
										<label for="confpass">Confirm Password</label> <input
											type="password" class="form-control" id="confpass"
											placeholder="Confirm Password" name="confpass" required>
									</div>

									<input type="submit" value="Change Password"
										class="btn btn-primary"> <input type="reset"
										class="btn btn-danger" value="Cancel">
									<%
										}
									%>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
        <!-- Back to Top -->
        <br>
       <jsp:include page="footer.jsp"></jsp:include>
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <%
		} else {
		response.sendRedirect("customer-login.jsp");
	 }
	%>
</body>

</html>