<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="link.jsp"></jsp:include>
<body>
	<div class="full_container">
		<div class="inner_container">
			<jsp:include page="navbar.jsp"></jsp:include>
			<!-- end sidebar -->
			<!-- right content -->
			<div id="content">
				<jsp:include page="topvar.jsp"></jsp:include>
			</div>
			<!-- dashboard inner -->
			        <div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>Profile</h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row column1">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 margin_0">
                                    <h2>Admin profile</h2>
                                 </div>
                              </div>
                              <div class="full price_table padding_infor_info">
                                 <div class="row">
                                    <!-- user profile section --> 
                                    <!-- profile image -->
                                    <div class="col-lg-12">
                                       <div class="full dis_flex center_text">
                                          <div class="profile_img"><img width="180" class="rounded-circle" src="dashbord/images/layout_img/user_img.jpg" alt="#" /></div>
                                          <div class="profile_contant">
                                          <%
                                          ResultSet rs=DatabaseConnection.getResultFromSqlQuery("select * from tbladmin");
											while(rs.next()){                                          
                                          %>
                                             <div class="contact_inner">
                                                <h3><%=rs.getString("name") %></h3>
                                                <p><strong>About: </strong><%=rs.getString("about") %></p>
                                                <ul class="list-unstyled">
                                                   <li><i class="fa fa-envelope-o"></i> : <%=rs.getString("email") %></li>
                                                   <li><i class="fa fa-phone"></i> : <%=rs.getString("mobile") %></li>
                                                </ul>
                                             </div>
                                             <div class="user_progress_bar">
                                                <div class="progress_bar">
                                                   <!-- Skill Bars -->
                                                  
                                                   </div>
                                                   
                                                   </div>
                                                   <span class="skill" style="width:47%;">Address <span class="info_valume"><%=rs.getString("address") %></span></span><br>
                                                  	 <span class="skill" style="width:47%;">Created At <span class="info_valume"><%=rs.getString("createdat") %></span></span><br>
                                                       <span class="skill" style="width:47%;">Update At <span class="info_valume"><%=rs.getString("updateat") %></span></span>
                                                <br> <br>  <br>                                                 
                                                   
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                       <!-- profile contant section -->
                                      <%} %>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-2"></div>
                        </div>
                        <!-- end row -->
                     </div>
                     <!-- footer -->
                     <div class="container-fluid">
                        <div class="footer">
                           <p>Copyright © 2018 Designed by html.design. All rights reserved.<br><br>
                              Distributed By: <a href="https://themewagon.com/">ThemeWagon</a>
                           </p>
                        </div>
                     </div>
                  </div>
                  <!-- end dashboard inner -->
               </div>
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
	<!-- fancy box js -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<!-- custom js -->
	<script src="js/custom.js"></script>
	<!-- calendar file css -->
	<script src="js/semantic.min.js"></script>
</body>
</html>