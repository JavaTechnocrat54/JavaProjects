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
                              <h2>Car</h2>
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
                                    <h2>ViewCar</h2>
                                 </div>
                              </div>
                              <div class="full price_table padding_infor_info">
                                 <div class="row">
                                    <!-- user profile section --> 
                                    <!-- profile image -->
                                    <%
                                    int carId = Integer.parseInt(request.getParameter("id"));
                                          ResultSet rs=DatabaseConnection.getResultFromSqlQuery("select * from tblcar where carid='"+carId+"'");
											if(rs.next()){                                          
                                          %>
                                    <div class="col-lg-12">
                                       <div class="full dis_flex center_text">
                                          <div class="profile_img"><img width="180" class="rounded-circle" src="AdminAddCar?id=<%=rs.getInt("carid")%>" alt="#" /></div>
                                          <div class="profile_contant">
                                          
                                             <div class="contact_inner">
                                                <h3>Model:-<%=rs.getString("model") %></h3>
                                              <h3>RegisterNumber:-<%=rs.getString("regno") %></h3>
                                                <h3>TotalSeat:-<%=rs.getString("regno") %></h3>
                                                <h3>Type:-<%=rs.getString("regno") %></h3>
                                                <h3>Rent</h3>
                                                <h6>Day Rs:-<%=rs.getInt("oned") %></h6>
                                                <h6>Week Rs:-<%=rs.getInt("onew") %></h6>
                                                <h6>Month Rs:-<%=rs.getInt("onem") %></h6>
                                             </div>
                                             <div class="user_progress_bar">
                                                <div class="progress_bar">
                                                   <!-- Skill Bars -->
                                                  
                                                   </div>
                                                   
                                                   </div>
                                                                                         
                                                   
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
                           <p>Copyright © 2018 Designed by CarBook. All rights reserved.<br><br>
                             
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