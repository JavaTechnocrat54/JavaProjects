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

										<h2>AddCar</h2>
									</div>
								</div>
								<div class="full price_table padding_infor_info">
								<form action="AdminAddCar" method="post" enctype="multipart/form-data">
									<div class="row">
										<div class="col-md-6">
										<%
									int id=	DatabaseConnection.generateCustomerId();
										%>
										 <label>CarId</label>
										 <input type="text" name="vid"
												class="form-control"  value="<%=id %>" readonly="readonly">
										</div>
										<div class="col-md-6">
										<lable class="lable">Model:-</lable>
										<input type="text" name="name" class="form-control" placeholder="Enter Model Name"  ">
										</div>
										<!-- end row -->
									</div>
									<br>
									<div class="row">
										<div class="col-md-6">
										<label>Seats</label>
										 <input type="text" name="seat"
												class="form-control" placeholder="Enter Total Seats" value="" >
										</div>
										<div class="col-md-6">
										<label>Luggage</label>
										<input type="text" name="lug" class="form-control" placeholder="Enter Toatal Luggage">
										</div>
										
									</div>
									<br>
									<div class="row">
										<div class="col-md-6">
										<label>Type</label>
										 <input type="text" name="fule"
												class="form-control" placeholder="drop daown fule"   >
										</div>
										<div class="col-md-6">
										<label>Mileage</label>
										<input type="text" name="mileag" class="form-control" placeholder="Enter The Mileage">
										</div>
										
									</div>
									<br>
									<div class="row">
										<div class="col-md-12">
										<label>RegistationNumber</label>
										 <input type="text" name="vno"
												class="form-control" placeholder="Enter Registation Number" value="" >
										</div>
										
									</div>
									<br>
									<div class="row">
										<div class="col-md-4">
										<label>RentForA Day</label>
										 <input type="text" name="day"
												class="form-control" placeholder="Cost In Day" value="" >
										</div>
										<div class="col-md-4">
										<label>RentForAWeek</label>
										<input type="text" name="wek" class="form-control" placeholder="Cost In Week">
										</div>
										<div class="col-md-4">
										<label>RentForAWeek</label>
										<input type="text" name="Mon" class="form-control" placeholder="Cost In Month">
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-6">
										 <input type="file" name="img"
												class="form-control" placeholder="" value="" >
										</div>
										
										
									</div>
									<br>
									<br>
									<div class="row">
										<div class="col-md-3 offset-3">
										 <input type="submit" name="img"
												class="btn btn-success" value="Add" >
										</div>
										
										<div class="col-md-6 ofset-3">
										 <input type="reset" name="img"
												class="btn btn-danger" value="Cancle" >
										</div>
									</div>
									</form>
									<!-- footer -->
									<div class="container-fluid">
										<div class="footer">
											<p>
												Copyright © 2018 Designed by CarBook. All rights
												reserved.<br>
												<br>
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