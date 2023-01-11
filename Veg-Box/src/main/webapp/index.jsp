<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>VEGE-BOX</title>
<link rel="icon" href="images/vegetable-box-logo.jpg" sizes="32x32"
	type="image/png">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">


<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body>
	<div class="site-wrap">
		<div class="site-navbar py-2">
			<div class="search-wrap">
				<div class="container-fluid">
					<a href="#" class="search-close js-search-close"><span
						class="icon-close2"></span></a>
					<form action="#" method="post">
						<input type="text" class="form-control"
							placeholder="Search keyword and hit enter...">
					</form>
				</div>
			</div>
			<div class="container">
				<jsp:include page="front-side-header.jsp"></jsp:include>
			</div>
		</div>


		<div class="owl-carousel owl-single px-0">
			<div class="site-blocks-cover overlay"
				style="background-image: url('images/banner-1.png');">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 mx-auto align-self-center">
							<div class="site-block-cover-content text-center">
								<h1 class="mb-0">VEGBOX Opens 24 Hours</h1>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="site-blocks-cover overlay"
				style="background-image: url('images/banner-2.png');">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 mx-auto align-self-center">
							<div class="site-block-cover-content text-center">
								<h1 class="mb-0">Fresh Vegetable Everyday</h1>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>



		<div class="site-section py-5">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="feature">
							<img alt="" src="images/vegcart.jpg" class="rounded-circle"
								width="100">
							<h3>
								<a href="#">Free Delivery</a>
							</h3>
							<p>Save Big on Your Daily Essentials. Explore Wide Range of
								Personal and Home Care Essentials. Welcome to a New World of
								VEGBOX. Free Home Delivery in 200+ cities. No Minimum Order. Get
								Low Prices Everyday. Amazing Discount Offers..</p>

						</div>
					</div>
					<div class="col-lg-6">
						<div class="feature">
							<img alt="" src="images/veg.png" class="rounded-circle"
								width="100">
							<h3>
								<a href="#">Fresh Vegetable Everyday</a>
							</h3>
							<p>WE Provide Fresh Product From Farmer To Customer</p>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="site-section">
			<div class="container">

				<div class="row justify-content-between">
					<div class="col-lg-6">
						<div class="title-section">
							<h2>
								Happy <strong class="text-primary">Customers</strong>
							</h2>
						</div>
						<div class="block-3 products-wrap">
							<div class="owl-single no-direction owl-carousel">

								<div class="testimony">
									<blockquote>
										<img src="images/person_1.jpg" alt="Image" class="img-fluid">
										<p>&ldquo;Really impressed with the quality of service and
											on quick delivery of report. I do recommend others to use the
											service.&rdquo;</p>
									</blockquote>

									<p class="author">&mdash; Rutuja Lembhe</p>
								</div>

								<div class="testimony">
									<blockquote>
										<img src="images/person_2.jpg" alt="Image" class="img-fluid">
										<p>&ldquo;It's the largest online mart.&rdquo;</p>
									</blockquote>

									<p class="author">&mdash; Sayali Kurkute</p>
								</div>

								<div class="testimony">
									<blockquote>
										<img src="images/person_3.jpg" alt="Image" class="img-fluid">
										<p>&ldquo;Awesome service. The staff was really courteous
											and the whole process is really smooth.&rdquo;</p>
									</blockquote>

									<p class="author">&mdash; Kishor Kadam</p>
								</div>

								<div class="testimony">
									<blockquote>
										<img src="images/person_4.jpg" alt="Image" class="img-fluid">
										<p>&ldquo;It was Awesome experience with VEGBOX portal.
											Easy to order, quick sample collection and within 12 hours
											report received.&rdquo;</p>
									</blockquote>

									<p class="author">&mdash; KK</p>
								</div>

							</div>
						</div>
					</div>
					<div class="col-lg-5">
						<div class="title-section">
							<h2 class="mb-5">
								Why <strong class="text-primary">Us</strong>
							</h2>
							<div class="step-number d-flex mb-4">
								<span>1</span>
								<p>Making farmer Profitable - We Directly purchase From
									farmers . vegebox save costs with better purchasing margins,
									efficient supply chains and inventory management leading to
									reduced prices for the end consumer.</p>
							</div>
							<div class="step-number d-flex mb-4">
								<span>2</span>
								<p>Online sales of Product started in the late 2005 and
									began to spread rapidly around the world.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="site-footer bg-light">
			<jsp:include page="front-side-footer.jsp"></jsp:include>
		</footer>
	</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/main.js"></script>
</body>
</html>