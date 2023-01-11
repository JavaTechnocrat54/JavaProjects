<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.DatabaseConnection"%>
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

       <jsp:include page="customer-side-header.jsp"></jsp:include>

        <!--  HOME SLIDER BLOCK  -->
  
		
			<div class="container">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">
					<strong>Profile</strong>
				</h4>
			</div>
		</div>
		<div class="panel panel-info shadow p-3 mb-5">
			<div class="panel-heading">View Profile</div>
			<div class="panel-body">
				<%
					String message = (String) session.getAttribute("profile-update");
					if (message != null) {
						session.removeAttribute("profile-update");
				%>
				<div class="alert alert-success" id="success">Profile updated successfully.</div>
				<%
					}
				%>
				<%
					ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer where uname='"+ session.getAttribute("uname") + "'");
					if (resultset.next()) {
				%>
				<form action="CustomerEditProfile" method="post">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="customerId">Customer Id:</label> <input type="text"
								class="form-control" id="customerId" placeholder="Customer Id"
								name="customerId" value="<%=resultset.getInt("id")%>" readonly>
						</div>
						<div class="form-group col-md-6"">
							<label for="cname">Full Name:</label> <input type="text"
								class="form-control" id="cname" placeholder="Full Name"
								name="cname" value="<%=resultset.getString("cname") %>" required>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="email">Email Id:</label> <input type="text"
								class="form-control" id="email" placeholder="Email Id"
								name="email" value="<%=resultset.getString("email") %>" readonly>
						</div>
						<div class="form-group col-md-6">
							<label for="mobile">Mobile No:</label> <input type="text"
								class="form-control" id="mobile" placeholder="Mobile No"
								name="mobile" value="<%=resultset.getString("mobile") %>" required>
						</div>
					</div>
					<div class="form-group">
						<label for="gender">Select Gender:</label> <select
							class="form-control" id="gender" name="gender" value="<%=resultset.getString("gender") %>">
							<option>Male</option>
							<option>Female</option>
						</select>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="city">Dob</label> <input type="text"
								class="form-control" id="city" placeholder="Enter City"
								name="dob" value="<%=resultset.getString("dob") %>" required>
						</div>
						<div class="form-group col-md-6">
							<label for="gender">Select Blood:</label> <select
											class="form-control" id="gender" name="bloodg">
										<option><%=resultset.getString("bloodg") %></option>
										
											<option>A+</option>
											<option>O+</option>
											<option>B+</option>
											<option>AB+</option>
											<option>A-</option>
											<option>O-</option>
											<option>B-</option>
											<option>AB-</option>
										</select>
					</div>
					
						<div class="form-group ">
							<label for="country">Address:</label> <input type="text"
								class="form-control" id="country" placeholder="Enter Country"
								name="address" value="<%=resultset.getString("address") %>" required>
						</div>
						
					
					<input type="submit" value="Edit Info" class="btn btn-primary">
					<input type="reset" class="btn btn-danger" value="Cancel">
				</form>
				<%
					}
				%>
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


<!-- Mirrored from templates.bwlthemes.com/blood_donation/v_2/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Jul 2022 14:38:10 GMT -->
</html>