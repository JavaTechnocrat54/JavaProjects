<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="login/fonts/icomoon/style.css">

    <link rel="stylesheet" href="login/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="login/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="login/css/style.css">

    <title>AdminLogin</title>
  </head>
  <body>
  

  
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="login/images/undraw_remotely_2j6y.svg" alt="Image" class="img-fluid">
        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
              <h3>Sign In</h3>
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
						%></h2>
            </div>
            <form action="AdminLogin" method="post">
              <div class="form-group first">
                <label for="email">Username</label>
                <input type="text" name="email" class="form-control" id="username">

              </div>
              
              <div class="form-group last mb-4">
                <label for="password">Password</label>
                <input type="text" name="upass" class="form-control" id="password">
                
              </div>
              <div class="form-group last mb-4">
                <label for="password">Varcode</label>
                <input type="text" name="varcode" class="form-control" id="password">
                
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
              <label for="password">Captcha:-<%=captcha %></label>
              <div class="d-flex mb-5 align-items-center">
                <label class="control control--checkbox mb-0"><span class="caption">Remember me</span>
                  <input type="checkbox" checked="checked"/>
                  <div class="control__indicator"></div>
                </label>
                <span class="ml-auto"><a href="#" class="forgot-pass">Forgot Password</a></span> 
              </div>

              <input type="submit" value="Log In" class="btn btn-block btn-primary">

              <span class="d-block text-left my-4 text-muted">&mdash; or login with &mdash;</span>
              
              <div class="social-login">
                <a href="#" class="facebook">
                  <span class="icon-facebook mr-3"></span> 
                </a>
                <a href="#" class="twitter">
                  <span class="icon-twitter mr-3"></span> 
                </a>
                <a href="#" class="google">
                  <span class="icon-google mr-3"></span> 
                </a>
              </div>
            </form>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  
    <script src="login/js/jquery-3.3.1.min.js"></script>
    <script src="login/js/popper.min.js"></script>
    <script src="login/js/bootstrap.min.js"></script>
    <script src="login/js/main.js"></script>
  </body>
</html>