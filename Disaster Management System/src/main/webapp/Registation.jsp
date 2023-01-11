<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <%@page import="com.connection.DatabaseConnection"%>
<html lang="en"> <!--<![endif]-->

    
<!-- Mirrored from templates.bwlthemes.com/blood_donation/v_2/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Jul 2022 14:37:50 GMT -->
<head>
        <meta charset="utf-8">
        <title>Blood Buddies - Blood Donation Campaign & Multi-Concept Activism Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="Reddrop Buddies - Blood Donation Campaign & Multi-Concept Activism Template">
        <meta name="author" content="xenioushk">
        <link rel="shortcut icon" href="images/favicon.png" />

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- The styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" >
        <link href="css/animate.css" rel="stylesheet" type="text/css" >
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" >
        <link href="css/venobox.css" rel="stylesheet" type="text/css" >
        <link rel="stylesheet" href="css/styles.css" />
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Oswald&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Raleway:wght@200&family=Unica+One&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Coda&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Arima+Madurai&display=swap');
            body{
                font-family: 'Oswald', sans-serif !important;
            }
            .logo{
                padding-top: 9px !important;
                border: #1B2430 solid 2px;
            }
            .logo:hover{
                background-color: #1B2430;
            }
            .logo1{
                padding-top: 9px !important;
                border: #FFFFDE solid 2px;
            }
            .logo1:hover{
                background-color: #06283D;
            }
            .sub-logo{
                padding: 4px;
            }
            .sub-logo1{
                padding: 10px;
            }
            .navbar-nav li a{
                font-family: 'Unica One', cursive !important;
                font-size: 1.2vw !important;
            }
            .navbar-nav li a:hover{
                text-decoration: underline;
                text-underline-offset: 5px;
                color: #EB1D36 !important;
            }
            .top-bar{
                background-color: #1B2430 !important;
            }
        </style>

    <body> 

        <div id="preloader">
            <span class="margin-bottom"><img src="images/loader.gif" alt="" /></span>
        </div>

       <jsp:include page="header.jsp"></jsp:include>

        <!--  HOME SLIDER BLOCK  -->
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
					String customerAccount = (String) session.getAttribute("success");
				if (customerAccount != null) {
					session.removeAttribute("success");
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
								<form action="CustomerReg" method="post" name="customerForm">
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
												>
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
									<div class="row">
									<div class="form-group col-md-6"><label for="gender">Select Gender:</label> <select
											class="form-control" id="gender" name="gender">
											<option>Male</option>
											<option>Female</option>
										</select></div>
									<div class="form-group col-md-6"><label for="pincode">Dob:</label> <input type="date"
												class="form-control" id="pincode"
												placeholder="Enter Pincode" name="dob" ></div>
									
									</div>
									<div class="form-group">
										
									</div>

									
										<div class="form-group ">
											<label for="address">Address:</label>
											<textarea class="form-control" id="address"
												placeholder="Address" name="address" required maxlength="60"></textarea>
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
				
			</div>
	

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


<!-- Mirrored from templates.bwlthemes.com/blood_donation/v_2/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Jul 2022 14:38:10 GMT -->
</html>