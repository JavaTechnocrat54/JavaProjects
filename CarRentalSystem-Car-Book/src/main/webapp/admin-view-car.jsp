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
								<h2>View Customer</h2>
							</div>
						</div>
					</div>
					<!-- row -->
					<div class="row">
						<!-- table section -->

						<!-- table section -->
						<div class="col-md-12">
							<div class="white_shd full margin_bottom_30">
								<div class="full graph_head">
									<div class="heading1 margin_0">
										<h2>Customer</h2>

									</div>
								</div>
								<div class="table_section padding_infor_info">
									<div class="table-responsive-sm">
										<table class="table">
											<thead>
												<tr>
													<th>#</th>
													<th>Image</th>
													<th>Model</th>
													<th>TotalSeats</th>
													<th>TotalLuggage</th>
													<th>Type</th>
													<th>Mileage</th>
													<th>RegNo</th>
													<th>RentDay</th>
													<th>RentDay</th>
													<th>RentDay</th>
													<td>Action</td>
												</tr>
											</thead>
											<%
											ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcar");
											while (resultset.next()) {
											%>
											<tbody>
												<tr>
													<td><%=resultset.getInt("carid")%></td>
													<td><img alt="ImgnotFound"
														src="AdminAddCar?id=<%=resultset.getInt("carid")%>"
														width="70"></td>
													<td><%=resultset.getString("model")%></td>
													<td><%=resultset.getString("seat")%></td>
													<td><%=resultset.getString("lug")%></td>
													<td><%=resultset.getString("fule")%></td>
													<td><%=resultset.getString("milea")%></td>
													<td><%=resultset.getInt("oned")%></td>
													<td><%=resultset.getInt("onew")%></td>
													<td><%=resultset.getInt("onem")%></td>
													<td><%=resultset.getString("status")%></td>
													<td><a
														href="admin-view-car-detail.jsp?id=<%=resultset.getInt("carid")%>"
														class="btn btn-sm btn-danger text-whitez"><i
															class="fa fa-trash"></i> View</a><br> <a
														href="admin-edit-car.jsp?id=<%=resultset.getInt("carid")%>"
														class="btn btn-sm btn-danger text-whitez"><i
															class="fa fa-trash"></i>Edit</a><br> <a
														href="AdminRemoveCar?custId=<%=resultset.getInt("carid")%>"
														class="btn btn-sm btn-danger text-whitez"
														onclick="return confirm('Are you sure do you want to delete this customer?');"><i
															class="fa fa-trash"></i> Delete</a></td>
												</tr>
											</tbody>
											<%
											}
											%>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- footer -->
				<div class="container-fluid">
					<div class="footer">
						<p>Copyright © 2022 Designed by CarBook. All rights reserved.</p>
					</div>
				</div>
			</div>
			<!-- end dashboard inner -->
		</div>
	</div>
	<!-- model popup -->
	<!-- The Modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Modal Heading</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">Modal body..</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end model popup -->
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