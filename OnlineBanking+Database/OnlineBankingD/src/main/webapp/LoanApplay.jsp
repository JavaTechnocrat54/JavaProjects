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
<title>APANA BANK</title>
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
<script>
	function myFunction() {
		var buyerName = document.getElementById("buyerName").value;
		document.location.href = "customer-sell-crops.jsp?buyerName="
				+ buyerName;
	}
</script>
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
	<div class="container-fluid">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">
					<strong>Apply for loan</strong>
				</h4>
			</div>
		</div>
		<div class="panel panel-info shadow p-3 mb-5">
			<div class="panel-heading">Loan</div>
			<div class="panel-body">
				<%
				String message = (String) session.getAttribute("success");
				if (message != null) {
					session.removeAttribute("success");
				%>
				<div class="alert alert-success" id="success">Loan Apply
					successfully.</div>
				<%
				}
				%>
				
				<%
				
				ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer where name='"
						+ session.getAttribute("uname") + "' and email='" + session.getAttribute("email") + "'");
				if (resultset.next()) {
				%>
				<form action="CustomerApplayLoan" method="post">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="customerId"> Account Number:</label> <input type="text"
								class="form-control" id="customerId" placeholder="Customer Id"
								name="customerId" value="<%=resultset.getLong(1) %>" readonly>
						</div>
						<div class="form-group col-md-6"">
							<label for="cname">Full Name:</label> <input type="text"
								class="form-control" id="cname" placeholder="Full Name"
								name="cname" value="<%=resultset.getString(2) %>" readonly>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="email">Email Id:</label> <input type="text"
								class="form-control" id="email" placeholder="Email Id"
								name="email" value="<%=resultset.getString("email") %>" readonly>
						</div>
						<div class="form-group col-md-6">
							<label for="mobile">Mobile No:</label> <input type="text"
								class="form-control" id="mobile" placeholder="Mobile No"
								name="mobile" value="<%=resultset.getString("mobile") %>" readonly>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="type">Chose Loan Type</label> <select
								class="form-control" name="type">
								<option value="null">Chose Loan Type</option>
								<option>HomeLoan</option>
								<option>LAP</option>
								<option>LAIS</option>
								<option>GoldLoan</option>
								<option>LMutualdunds</option>
								<option>LoanFixed deposits</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="amoutn">Enter Loan Amount</label> <input type="text"
								class="form-control" name="amount"
								placeholder="Enter The Amount">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="address">Address:</label>
							<textarea class="form-control" id="address" name="address">State:<%=resultset.getString("state") %>,City<%=resultset.getString("country") %>,Address<%=resultset.getString("address") %></textarea>
						</div>


					</div>
					<%
					}
					%>


					<input type="submit" value="Apply" class="btn btn-primary">
					<input type="reset" class="btn btn-danger" value="Cancel">
				</form>
			</div>
		</div>
		<div class="panel panel-info shadow p-3 mb-5">
			<div class="panel-heading">View Selling Crops</div>
			<div class="panel-body">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th>Account Number</th>
							<th>Full Name</th>
							<th>Email Id</th>					
							<th>Mobile No</th>
							<th>LoanType</th>
							<th>Amount</th>
							<th>Address</th>
							<th>LoanApply Date</th>
							<th>Status</th>
							<th>Response Date</th>
						</tr>
					</thead>
					<%
						ResultSet result = DatabaseConnection.getResultFromSqlQuery("select * from tblloan where email='" + session.getAttribute("email") + "'");
						while (result.next()) {
					%>
					<tbody>
						<tr>
						<td><%=result.getInt(1) %></td>
						<td><%=result.getLong(2) %></td>
						<td><%=result.getString(3) %></td>
						<td><%=result.getString(4) %></td>
						<td><%=result.getString(5) %></td>
						<td><%=result.getString(6) %></td>
						<td><%=result.getDouble(7) %></td>
						<td><%=result.getString(8) %></td>
						<td><%=result.getString(10) %></td>
						<%
								if (result.getString("status").equals("Pending")) {
							%>
							<td><span class="label label-primary">Pending</span></td>
							<%
								} else if (result.getString("status").equals("Accept")) {
							%>
							<td><span class="label label-success">Loan Accepted</span></td>
							<%
								} else {
							%>
							<td><span class="label label-info">Loan Rejected</span></td>
							<%
								}
							%>
						
						<td><%=result.getString(11) %></td>
						</tr>
					</tbody>
					<%
					}
					%>
				</table>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="customer-side-footer.jsp"></jsp:include>
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