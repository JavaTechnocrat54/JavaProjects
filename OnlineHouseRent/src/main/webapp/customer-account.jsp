<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
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
        
<br><br><br>
<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">Create Customer Account</strong>
					</div>
				</div>
			</div>
		</div>
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

				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-warning shadow p-3 mb-5">
							<div class="panel-heading">Customer Account</div>
							<div class="panel-body">
								<form action="CustomerRegiser" method="post" name="customerForm">
									<div class="row">
										<%
											int customerId = DatabaseConnection.generateCustomerId();
										%>
										<div class="form-group col-md-6">
											<label for="customerId">Customer Id:</label> <input
												type="text" class="form-control" id="customerId"
												placeholder="Customer Id" name="customerId"
												value="<%=customerId%>" readonly>
										</div>
										<div class="form-group col-md-6"">
											<label for="cname">Full Name:</label> <input type="text"
												class="form-control" id="cname" placeholder="Full Name"
												name="cname" required
												onkeypress="return lettersValidate(event)">
										</div>
									</div>
									<div class="row">
										<div class="form-group col-md-6">
											<label for="email">Email Id:</label> <input type="text"
												class="form-control" id="email" placeholder="Email Id"
												name="email" required onblur="return validateEmail()">
											<span id="emailloc"></span>
										</div>
										<div class="form-group col-md-6">
											<label for="mobile">Mobile No:</label> <input type="text"
												class="form-control" id="mobile" placeholder="Mobile No"
												name="mobile" required
												onkeypress="return numberValidate(event)" maxlength="10">
										</div>
									</div>
									<div class="form-group">
										<label for="gender">Select Gender:</label> <select
											class="form-control" id="gender" name="gender">
											<option>Male</option>
											<option>Female</option>
										</select>
									</div>

									<div class="row">
										<div class="form-group col-md-6">
											<label for="address">Address:</label>
											<textarea class="form-control" id="address"
												placeholder="Address" name="address" required maxlength="60"></textarea>
										</div>
										<div class="form-group col-md-6">
											<label for="pincode">Pincode:</label> <input type="text"
												class="form-control" id="pincode"
												placeholder="Enter Pincode" name="pincode" required
												oninput="limitNumber(this)" maxlength="6">
										</div>
									</div>
									<div class="row">
										<div class="form-group col-md-6">
											<label for="uname">User Name:</label> <input type="text"
												class="form-control" id="uname" placeholder="Enter username"
												name="uname" required
												onkeypress="return lettersValidate(event)">
										</div>
										<div class="form-group col-md-6">
											<label for="upass">Password:</label> <input type="password"
												class="form-control" id="upass" placeholder="Enter password"
												name="upass" required oninput="limitChar(this)"
												maxlength="12">
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
				<p>
					<strong>Important Note -</strong>
				</p>
				<p>1) Name,User Name only allowed in character format.</p>
				<p>2) Password length is upto 12 character & digit.</p>
				<p>3) 10 digit mobile number allowed only.</p>
			</div>
		</div>

<br><br>
       <jsp:include page="footer.jsp"></jsp:include>


        <!-- Back to Top -->
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
</body>

</html>