<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Inner Page - Delicious Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
.row{
padding: 1rem;
}

</style>
  
</head>

<body>
<%
if (session.getAttribute("name") != null && session.getAttribute("name") != "") {
String name=(String)session.getAttribute("name");
int id=(int)session.getAttribute("id");

%>
  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center fixed-top ">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-center justify-content-lg-start">
      <i class="bi bi-phone d-flex align-items-center"><span>+1 5589 55488 55</span></i>
      <i class="bi bi-clock ms-4 d-none d-lg-flex align-items-center"><span>Mon-Sat: 11:00 AM - 23:00 PM</span></i>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <div class="logo me-auto">
        <h1><a href="AdminDashbord.jsp">Delicious</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto " href="AdminDashbord.jsp">Home</a></li>
         
        
        
 <li class="dropdown"><a href="#"><span><%=name %></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
             
              
              <li><a href="Logout.jsp">LogOut</a></li>
              
              
            </ul>
          </li>
        </ul>
        
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Wellcome <%=name %></h2>
          <ol>
            <li><a href="AdminDashbord.jsp">AdminHome</a></li>
            <li>Dashbord</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
      <div class="row">
					
						<div class="col-md-6 form-group">
						<div class="alert alert-info back-widget-set text-center">
							<a href="Adminviewtable.jsp"> <i class="fas fa-bookmark fa-5x" aria-hidden="true"></i></a>
							<%
							 ResultSet book=DatabaseConnection.getResultFromSqlQuery("select count(*)from tblbooking");
							 book.next();
							 int allbook=book.getInt(1);
							 
							 %>
							 <h2>View Book Table</h2>
							 <h3><%=allbook %></h3>
						</div>
						</div>
						<div class="col-md-6 form-group mt-3 mt-md-0">
							<div class="alert alert-info back-widget-set text-center">
					<a href="Admin-view-order.jsp">	 <i class="fa-solid fa-pizza-slice fa-5x" aria-hidden="true"></i></a>
							 <%
							 ResultSet order=DatabaseConnection.getResultFromSqlQuery("select count(*)from tblorder");
							 order.next();
							 int allorder=order.getInt(1);
							 
							 %>
							 <h2>Total Online Order</h2>
							<h3><%=allorder %></h3>
						</div>
						</div>
					</div>
					 <div class="row">
					
						<div class="col-md-6 form-group">
						<div class="alert alert-info back-widget-set text-center">
							<a href="Admin-view-user.jsp">		 <i class="fa-solid fa-users-viewfinder fa-5x" aria-hidden="true"></i></a>
							 <%
							 ResultSet rsuser=DatabaseConnection.getResultFromSqlQuery("select count(*)from tbluser");
							 rsuser.next();
							 int allUser=rsuser.getInt(1);
							 
							 %>
							 <h2>TotalUsers</h2>
							 <h3><%=allUser %></h3>
						</div>
						</div>
						<div class="col-md-6 form-group mt-3 mt-md-0">
							<div class="alert alert-info back-widget-set text-center">
							<a href="AdminviewEvent.jsp">		 <i class="fa-solid fa-champagne-glasses fa-5x" aria-hidden="true"></i></a>
							 <%
							 ResultSet event=DatabaseConnection.getResultFromSqlQuery("select count(*)from tblevent");
							 event.next();
							 int allevent=event.getInt(1);
							 
							 %>
							 <h2>Total BookEvents</h2>
							 <h3><%=allevent %></h3>
						</div>
						</div>
						 <div class="row">
					
						
						
						</div>
					</div>
      <div class="text-center">
    
     
     </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <h3>Delicious</h3>
      <p>Et aut eum quis fuga eos sunt ipsa nihil. Labore corporis magni eligendi fuga maxime saepe commodi placeat.</p>
      <div class="social-links">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
      <div class="copyright">
        &copy; Copyright <strong><span>Delicious</span></strong>. All Rights Reserved
      </div>
      
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
<%
}else{
	response.sendRedirect("index.html");
}

%>
</body>

</html>