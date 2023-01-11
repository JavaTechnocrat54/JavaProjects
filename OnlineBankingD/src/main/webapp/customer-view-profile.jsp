<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="zxx">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Agricultural Web Portal</title>
<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css2?family=Poppins:wght@300;600;700&display=swap"
	rel="stylesheet">
<!-- google fonts -->
<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style-starter.css">
<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script> -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


  <style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins';
}
body {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background: #ecf0f3;
}
.wrapper,
.wrapper .img-area,
.social-icons a {
  background: #ecf0f3;
  box-shadow: -3px -3px 7px #ffffff, 3px 3px 5px #ceced1;
}
.wrapper {
  position: relative;
  width: 350px;
  padding: 30px;
  border-radius: 10px;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  margin-left: 15px;
}
.wrapper .img-area {
  height: 150px;
  width: 150px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
}
.img-area .inner-area {
  height: calc(100% - 25px);
  width: calc(100% - 25px);
  border-radius: 50%;
}
.inner-area img {
  height: 100%;
  width: 100%;
  border-radius: 50%;
  object-fit: cover;
}
.wrapper .name {
  font-size: 23px;
  font-weight: 500;
  color: #31344b;
  margin: 10px 0 5px 0;
}
.wrapper .career {
  color: #44476a;
  font-weight: 450;
  font-size: 16px;
}
.wrapper .flow {
  color: #44476a;
  font-weight: 450;
  font-size: 16px;
  margin: 10px 0 5px 0;
}
.wrapper .about {
  background: #ecf0f3;
  box-shadow: -3px -3px 7px #ffffff, 3px 3px 5px #ceced1;
}
.wrapper .about {
  position: relative;
  width: 150px;
  border: none;
  outline: none;
  padding: 5px;
  color: #31344b;
  font-size: 13px;
  font-weight: 450;
  border-radius: 5px;
  cursor: pointer;
  z-index: 4;
  margin: 10px 0 15px 0;
}
.wrapper .flow {
  background: #ecf0f3;
  box-shadow: -3px -3px 7px #ffffff, 3px 3px 5px #ceced1;
}
.wrapper .flow {
  position: relative;
  width: 150px;
  border: none;
  outline: none;
  padding: 5px;
  color: #31344b;
  font-size: 13px;
  font-weight: 450;
  text-align: center;
  border-radius: 5px;
  cursor: pointer;
  z-index: 4;
  margin: 15px 0 15px 0;
}
.wrapper .horizon {
  width: 330px;
  height: 2px;
  border-width: 0;
  background-color: #e4e4e4;
  margin: 10px 0 5px 0;
}
.wrapper .info {
  color: #44476a;
  font-size: 14px;
  font-weight: 500;
  color: #31344b;
  text-align: left;
}
.wrapper .social-icons {
  text-align: center;
}
.social-icons a {
  position: relative;
  height: 35px;
  width: 35px;
  margin: 0 3;
  margin-top: 5;
  display: inline-flex;
  text-decoration: none;
  border-radius: 50%;
}
.social-icons a:hover::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  border-radius: 50%;
  background: #ecf0f3;
  box-shadow: inset -3px -3px 7px #ffffff, inset 3px 3px 5px #ceced1;
}
.social-icons a i {
  position: relative;
  z-index: 3;
  text-align: center;
  width: 100%;
  height: 100%;
  line-height: 35px;
}
.social-icons a.fb i {
  color: #4267b2;
}
.social-icons a.messenger i {
  color: #006aff;
}
.social-icons a.insta i {
  color: #dd2a7b;
}
.social-icons a.telegram i {
  color: #229ed9;
}
.social-icons a.email i {
  color: #34a853;
}

.box{
text-align: center;
}

  </style>
<!-- Template CSS -->
</head>

<body>
		<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<!--header-->
	<header id="site-header" class="fixed-top">
		<div class="container-fluid">
			<jsp:include page="customer-side-header.jsp"></jsp:include>
		</div>
	</header>
	<!-- //header -->
	<!-- about breadcrumb -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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
			<div class="panel-body" style="margin-top: 80px;">
				<%
					String message = (String) session.getAttribute("profile-update");
					if (message != null) {
						session.removeAttribute("profile-update");
				%>
				<div class="alert alert-success" id="success">Profile updated successfully.</div>
				<%
					}
				%>
	<div class="box">			
			<%
					ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer where name='"+ session.getAttribute("uname") + "' and email='" + session.getAttribute("email") + "'");
					if (resultset.next()) {
				%>	
    <div class="wrapper">
      <div class="img-area">
        <div class="inner-area">
          
        </div>
      </div>
      <div class="name">Account No:<br><%=resultset.getLong(1) %></div>
    <div class="career">Balance:-<%=resultset.getDouble(17)%></div>
      <hr class="horizon" />
      <button class="about">Info </button>
      <div class="info">
        <p>Name:- <%=resultset.getString(2) %></p>
        <p>Aadhar:- <%=resultset.getString(3) %></p>
        <p>PanCard No:-<%=resultset.getString(4) %></p>
       
        
        <p>Email:-<%=resultset.getString(5) %></p>
        <p></p>
        <p>MobileNo:-<%=resultset.getString(6) %></p>
        <p>Dob:-<%=resultset.getString(7) %></p>
        <p></p>
        <p>Gender: -<%=resultset.getString(8) %></p>
        <p>Country:-<%=resultset.getString(10) %></p>
        <p>State:-<%=resultset.getString(11) %></p>
        <p>City:-<%=resultset.getString(12) %></p>
        <p>Pincode:-<%=resultset.getString(13) %></p>
        <p>Address:-<%=resultset.getString(14) %></p>
      </div>
     
      </div>
    </div>
			
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%
					}
				%>
	<!-- //footer-29 block -->
	<!-- disable body scroll which navbar is in active -->
	<script>
		$(function() {
			$('.navbar-toggler').click(function() {
				$('body').toggleClass('noscroll');
			})
		});
	</script>
	<!-- disable body scroll which navbar is in active -->

	<!-- Template JavaScript -->
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script src="assets/js/theme-change.js"></script>
	<!--/MENU-JS-->
	<script>
		$(window).on("scroll", function() {
			var scroll = $(window).scrollTop();

			if (scroll >= 80) {
				$("#site-header").addClass("nav-fixed");
			} else {
				$("#site-header").removeClass("nav-fixed");
			}
		});

		//Main navigation Active Class Add Remove
		$(".navbar-toggler").on("click", function() {
			$("header").toggleClass("active");
		});
		$(document).on("ready", function() {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
			$(window).on("resize", function() {
				if ($(window).width() > 991) {
					$("header").removeClass("active");
				}
			});
		});
	</script>
	<!--//MENU-JS-->
	<script src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#success').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#danger').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#warning').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#info').delay(3000).show().fadeOut('slow');
		});
	</script>
	<%
		} else {
		response.sendRedirect("customer-login.jsp");
	 }
	%>
</body>
</html>