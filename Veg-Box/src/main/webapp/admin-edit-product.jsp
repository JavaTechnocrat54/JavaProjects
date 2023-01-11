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
					<h4>
						<i class="fa fa-medkit"></i> View Product Details
						</h3>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="x_panel">
				<div class="x_title">
					<h2>Product Information</h2>
					<div class="clearfix"></div>
				</div>
				<%
					int id=Integer.parseInt(request.getParameter("medicineId"));
					ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct where id='"+id+"'");
					while (resultset.next()) {
				%>
				<div class="x_content shadow p-3 mb-5">
					<form role="form" action="AdminEditProduct" method="post">
						<div class="form-row">
							<div class="col-md-6 col-sm-6">
								<div class="form-group">
									<label>Product Id</label> <input class="form-control"
										type="text" name="medicineId" value="<%=resultset.getInt("id")%>" readonly>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="form-group">
									<label>Select ProductType</label> <input type="text"
										class="form-control" name="mType" value="<%=resultset.getString("medicine_type")%>" readonly>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-12 col-sm-12">
								<div class="form-group">
									<label>Product Name</label> <input class="form-control"
										type="text" name="mName" value="<%=resultset.getString("medicine_name")%>" >
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-12 col-sm-12">
								<div class="form-group">
									<label>Product Description</label>
									<textarea class="form-control" name="mDescription" value="" ><%=resultset.getString("medicine_description")%></textarea>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label>Purchase Price</label> <input class="form-control"
										type="text" name="mPrice" value="<%=resultset.getDouble("medicine_mrp_price")%>" >
								</div>
							</div>
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label>Discount Price</label> <input class="form-control"
										type="text" name="mDiscPrice" value="<%=resultset.getDouble("medicine_discount_price")%>" >
								</div>
							</div>
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label>Quantity</label> <input class="form-control" type="text"
										name="mQuantity" value="<%=resultset.getInt("medicine_quantity")%>" >
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label>Status</label> <select class="form-control" name="mStatus" value="<%=resultset.getString("medicine_status")%>">
										<option>Active</option>
										<option>Pending</option>
									</select>
								</div>
							</div>
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label>Product Image</label> <image src="AdminAddProduct?id=<%=resultset.getInt("id")%>"
												width="100" height="70"></image>
								</div>
							</div>
							
						</div>
						
						<div class="form-row">
							<div class="col-md-12 col-sm-12 ">
								<button type="submit" class="btn btn-info">Update</button>
							</div>
						</div>
					</form>
				</div>
				<%
					}
				%>
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
