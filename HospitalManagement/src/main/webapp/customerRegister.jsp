<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
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
            <h1 class="display-3 text-white mb-3 animated slideInDown">Register</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">Registration</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
     
<div class="site-section">
		<div class="container">
			<%
			String customerAccount = (String) session.getAttribute("customer-account");
			if (customerAccount != null) {
				session.removeAttribute("customer-account");
			%>
			<div class="alert alert-info" id="info">Customer account
				created successfully.</div>
			<%
			}
			%>

			<div class="row" style="margin-top: 50px;">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="panel panel-warning shadow p-3 mb-5">
						<div class="panel-heading">Customer Account</div>
						<div class="panel-body">
							<form action="CustomerRegister" method="post" name="customerForm">
								<div class="form-row">
									<%
									int customerId = DatabaseConnection.generateCustomerId();
									%>
									
									<div class="form-group col-md-6">
										<label for="customerId">Customer Id:</label> <input
											type="text" class="form-control" id="customerId"
											placeholder="Customer Id" name="customerId"
											value="<%=customerId%>" readonly>
									</div>
									<div class="form-group col-md-6">
										<label for="cname">Full Name:</label> <input type="text"
											class="form-control" id="cname" placeholder="Full Name"
											name="cname" required>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="email">Email Id:</label> <input type="text"
											class="form-control" id="email" placeholder="Email Id"
											name="email" required> <span id="emailloc"></span>
									</div>
									<div class="form-group col-md-6">
										<label for="mobile">Mobile No:</label> <input type="text"
											class="form-control" id="mobile" placeholder="Mobile No"
											name="mobile" required>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="gender">Select Gender:</label> <select
											class="form-control" id="gender" name="gender">
											<option>Male</option>
											<option>Female</option>
										</select>
									</div>
									<div class="form-group col-md-6">
										<label for="occupation">Occupation:</label> <input type="text"
											class="form-control" id="mobile"
											placeholder="Your Occupation" name="occupation" required>
									</div>

								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="address">Dob:</label> <input type="date"
											class="form-control" id="upass" placeholder="Enter password"
											name="date">
									</div>
									<div class="form-group col-md-6">
										<label for="upass">Password:</label> <input type="password"
											class="form-control" id="upass" placeholder="Enter password"
											name="upass">
									</div>
								</div>


								<div class="form-group col-md-6">
									<label for="address">Address:</label>
									<textarea class="form-control" id="address"
										placeholder="Address" name="address" required></textarea>
								</div>
						</div>
						<input type="submit" value="Create Account"
							class="btn btn-primary"> <input type="reset"
							class="btn btn-danger" value="Cancel">
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