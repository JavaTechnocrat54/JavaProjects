
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="zxx">
<head>
<!-- Required meta tags -->

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
	<div class="container-fluid">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">
					<strong>View Lone Info</strong>
				</h4>
			</div>
		</div>
		<div class="panel panel-warning shadow p-3 mb-5">
			<div class="panel-heading">Lone Info</div>
			<div class="panel-body">
				<div class="table-responsive table-bordered">
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>LoanName</th>

								<th>Interest Rate</th>
								<th>Processing Fee</th>
								<th>Loan Amount/Tenure</th>

							</tr>
						</thead>

						<tbody>
							<tr>
								<td>1</td>
								<td>HomeLoan</td>
								<td>7.55% - 10.85% p.a.</td>
								<td>0.35% onwards (min. Rs.2,000; max. Rs.10,000)</td>

								<td>1-30 Years</td>

							</tr>

							<tr>
								<td>2</td>
								<td>LAP</td>
								<td>7.55%* onwards</td>
								<td>0.5% or Rs.3,000 whichever is higher</td>

								<td>1-30 Years</td>

							</tr>
							<tr>
								<td>3</td>
								<td>LAIS</td>
								<td>7.40% p.a. onwards</td>
								<td>0.50% or ₹15,000 Maximum</td>

								<td>1-30 Years</td>

							</tr>
							<tr>
								<td>4</td>
								<td>GoldLoan</td>
								<td>6.90% p.a. onwards</td>
								<td>Up to 0.5% of the loan amount (min 10,000 in both
									cases,</td>

								<td>1-30 Years</td>

							</tr>
							<tr>
								<td>5</td>
								<td>LMutualdunds</td>
								<td>6.90% p.a. onwards</td>
								<td>0.50% (min.₹ 10,000)</td>

								<td>1-30 Years</td>

							</tr>
							<tr>
								<td>6</td>
								<td>LoanFixed deposits</td>
								<td>9.00% – 12.50% p.a</td>
								<td>₹ 5,000 to ₹ 10,000 + applicable tax</td>

								<td>1-30 Years</td>

							</tr>
						</tbody>

					</table>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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
	<%
	} else {
	response.sendRedirect("customer-login.jsp");
	}
	%>
</body>
</html>