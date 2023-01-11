<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
</head>
<jsp:include page="link.jsp"></jsp:include>
<body>



	<jsp:include page="navbar.jsp"></jsp:include>
			<!-- end sidebar -->
			<!-- right content -->
			
		<jsp:include page="topvar.jsp"></jsp:include>
				<!-- dashboard inner -->
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div class="midde_cont">
					<div class="container-fluid">
						
						<div class="row column1">
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<i class="fa fa-user yellow_color"></i>
										</div>
									</div>
									<%
									
									int countCustomers = 0;
									ResultSet rsCustomers = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcustomer");
									rsCustomers.next();
									countCustomers = rsCustomers.getInt(1);
								%>
									
									<div class="counter_no">
										<div>
											<p class="total_no"><%=countCustomers %></p>
											<p class="head_couter">Welcome</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<img alt="" src="images/apple-touch-icon.png" width="50px"
												style="margin-left: 50px;">
										</div>
									</div>
									<%
									
									int countBooking = 0;
									ResultSet rsBooking = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblbooking");
									rsBooking.next();
									countBooking = rsBooking.getInt(1);
								%>
									<div class="counter_no">
										<div>
											<p class="total_no"><%=countBooking %></p>
											<p class="head_couter">TotalBooking</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<img alt="" src="images/carlo-rfinal.png" width="80px"
												style="margin-left: 50px;">
										</div>
									</div>
									<%
									
									int countCar = 0;
									ResultSet rsCar = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcar");
									rsCar.next();
									countCar = rsCar.getInt(1);
								%>
									<div class="counter_no">
										<div>
											<p class="total_no"><%=countCar %></p>
											<p class="head_couter">TotalCar</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<i class="fa fa-comments-o red_color"></i>
										</div>
									</div>
									<%
									
									int countContact = 0;
									ResultSet rsContact = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcontact");
									rsContact.next();
									countContact = rsContact.getInt(1);
								%>
									<div class="counter_no">
										<div>
											<p class="total_no"><%=countContact %></p>
											<p class="head_couter">Contact</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row column1 social_media_section">
							<div class="col-md-6 col-lg-3">
								<div class="full socile_icons fb margin_bottom_30">
									<div class="social_icon">
										<i class="fa fa-facebook"></i>
									</div>
									<div class="social_cont">
										<ul>
											<li><span><strong>35k</strong></span> <span>Friends</span>
											</li>
											<li><span><strong>128</strong></span> <span>Feeds</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full socile_icons tw margin_bottom_30">
									<div class="social_icon">
										<i class="fa fa-twitter"></i>
									</div>
									<div class="social_cont">
										<ul>
											<li><span><strong>584k</strong></span> <span>Followers</span>
											</li>
											<li><span><strong>978</strong></span> <span>Tweets</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full socile_icons linked margin_bottom_30">
									<div class="social_icon">
										<i class="fa fa-linkedin"></i>
									</div>
									<div class="social_cont">
										<ul>
											<li><span><strong>758+</strong></span> <span>Contacts</span>
											</li>
											<li><span><strong>365</strong></span> <span>Feeds</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full socile_icons google_p margin_bottom_30">
									<div class="social_icon">
										<i class="fa fa-google-plus"></i>
									</div>
									<div class="social_cont">
										<ul>
											<li><span><strong>450</strong></span> <span>Followers</span>
											</li>
											<li><span><strong>57</strong></span> <span>Circles</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- graph -->

					</div>
				</div>
				</div>
				  <!-- jQuery -->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="js/animate.js"></script>
      <!-- select country -->
      <script src="js/bootstrap-select.js"></script>
      <!-- owl carousel -->
      <script src="js/owl.carousel.js"></script> 
      <!-- chart js -->
      <script src="js/Chart.min.js"></script>
      <script src="js/Chart.bundle.min.js"></script>
      <script src="js/utils.js"></script>
      <script src="js/analyser.js"></script>
      <!-- nice scrollbar -->
      <script src="js/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="dashbord/js/custom.js"></script>
      <script src="dashbord/js/chart_custom_style2.js"></script>
</body>
</html>