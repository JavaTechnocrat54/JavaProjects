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

       <jsp:include page="admin-side-header.jsp"></jsp:include>

        <!--  HOME SLIDER BLOCK  -->
  
		<br>
	<div class="container">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">
					<strong>Change Password</strong>
				</h4>
			</div>
		</div>
		<div class="panel panel-info shadow p-3 mb-5 col-md-8">
			<div class="panel-heading">Change Password</div>
			<div class="panel-body">
				<%
					String message = (String) session.getAttribute("password-change-success");
					if (message != null) {
						session.removeAttribute("password-change-success");
				%>
				<div class='alert alert-success' id='success'>Password change
					successfully.</div>
				<%
					}
				%>
				<%
					String fail = (String) session.getAttribute("password-change-fail");
					if (fail != null) {
						session.removeAttribute("password-change-fail");
				%>
				<div class="alert alert-danger" id='danger'>Old password does
					not match..</div>
				<%
					}
				%>
				<%
					String passwordConfirm = (String) session.getAttribute("password-not-match");
					if (passwordConfirm != null) {
						session.removeAttribute("password-not-match");
				%>
				<div class="alert alert-warning" id='danger'>New password and
					confirm password does not match.</div>
				<%
					}
				%>
				<%
					ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tbladmin where uname='"+ session.getAttribute("uname") + "'");
					if (resultset.next()) {
				%>
				<form action="AdminChangePassword" method="post">
					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="cpassword">Current Password:</label> <input
								type="text" class="form-control" id="cpassword"
								name="cpassword" value="<%=resultset.getString("upass")%>"
								readonly>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="password">New Password:</label> <input
								type="password" class="form-control" id="password"
								name="password" placeholder="New Password">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="confpass">Confirm Password:</label> <input
								type="password" class="form-control" id="confpass"
								name="confpass" placeholder="Confirm Password">
						</div>
					</div>
					<input type="submit" value="Change Password"
						class="btn btn-primary"> <input type="reset"
						class="btn btn-danger" value="Cancel">
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