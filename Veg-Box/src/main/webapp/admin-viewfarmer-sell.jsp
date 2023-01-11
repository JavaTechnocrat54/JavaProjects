<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="admin-side-header.jsp"></jsp:include>
<body class="nav-md">
	<%
	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="admin-menu-sidebar.jsp"></jsp:include>
	<jsp:include page="admin-menu-footer.jsp"></jsp:include>
	</div>
	</div>
	<jsp:include page="admin-topnav.jsp"></jsp:include>
	<!-- page content -->
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						<i class="fa fa-medkit"></i> Product
					</h3>
				</div>
			</div>
			<div class="clearfix"></div>
			<%
			String editmessage = (String) session.getAttribute("success");
			if (editmessage != null) {
				session.removeAttribute("success");
			%>
			<div class="alert alert-info" id="info">Product information
				updated.</div>
			<%
			}
			%>
			<%
			String deleteMedicine = (String) session.getAttribute("medicine");
			if (deleteMedicine != null) {
				session.removeAttribute("medicine");
			%>
			<div class="alert alert-danger" id="danger">Product deleted.</div>
			<%
			}
			%>
			<div class="row">
				<div class="col-md-12 col-sm-12  ">
					<div class="x_panel">
						<div class="x_title">
							<h2>List of Product</h2>
							
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<table id="datatable" class="table table-striped table-bordered"
								style="width: 100%">
								<thead>
									<tr>
										<th>Id</th>
										<th>Image</th>
										<th>Name</th>
										<th>Quantity in KG/L</th>
										<th>Address</th>
										<th>Price per KG/L</th>
										<th>Processing Fee</th>
										<th>Total</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>

								<%
								ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblsell");
								while (resultset.next()) {
								%>
								<tbody>
									<tr>
										<td><%=resultset.getInt("sellid")%></td>
										<td><image
												src="GetProductOrders?name=<%=resultset.getString("type")%>"
												width="100" height="70"></image></td>
										<td><%=resultset.getString("type")%></td>
										<td><%=resultset.getString("quantity")%></td>
										<td><%=resultset.getString("address")%></td>
										<td><%=resultset.getDouble("price")%></td>
										<td><%=resultset.getDouble("pf")%></td>
										<td><%=resultset.getDouble("total")%></td>
										<%
										if (resultset.getString("status").equals("pending")) {
										%>
										<td><span class="label label-Primary">Pending</span></td>
										<%
										} else if (resultset.getString("status").equals("accept")) {
										%>
										<td><span class="label label-success">Product
												Accepted</span></td>
										<%
										} else {
										%>
										<td><span class="label label-danger">Product Rejected</span></td>
										<%
										}
										%>
										<%
										if (resultset.getString("status").equals("pending")) {
										%>
										<td><a
											href="SellStatusAccept?accountno=<%=resultset.getInt("sellid")%>"><button
													class="btn btn-success"
													onClick="return confirm('Are you sure, You want to Block The Customer?');">Accepted
													</button></a> <a
											href="SellStatusReject?accountno=<%=resultset.getInt("sellid")%>"><button
													class="btn btn-danger"
													onClick="return confirm('Are you sure, You  want to UNBlock The Customer?');">Reject
													</button></a></td>


										<%
										} else {
										%>
										<td><span class="label label-info">None</span></td>
										<%
										}
										%>
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
	</div>
	</div>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>
	<%
	} else {
	response.sendRedirect("admin-login.jsp");
	}
	%>
</body>
</html>