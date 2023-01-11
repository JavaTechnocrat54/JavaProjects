<!DOCTYPE html>
<html>
<head>
<title>HomePage</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="carousel.css" rel="stylesheet">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-danger">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">  <img src="img/logo.png" alt="" width="40" height="40" class="d-inline-block">E-BloodBank</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav me-auto mb-2 mb-md-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="AdminLogin.jsp">AdminLogin</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="UserLogin.jsp">UserLogin</a>
						</li>
					</ul>

				</div>
			</div>
		</nav>
	</header>

	<main>

		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img alt="" src="img/car2.jpg">

					<div class="container">
						<div class="carousel-caption text-start">
							<h1>Answer to Emergencies</h1>
							<p>As soon as a new blood request is raised,you can view it</p>
							
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img alt="" src="img/collage.png">
					<div class="container">
						<div class="carousel-caption">
							
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img alt="" src="img/car2.jpg">
					<div class="container">
						<div class="carousel-caption text-end">
							<h1>Find Donors in your Area</h1>
							<p>Get connected in a matter of minutes at zero cost. Our App
								ships with a smart system that finds the closest blood donors.
								Our automated blood donation system works efficiently whenever
								someone needs a blood transfusion.</p>
							
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>


		<!-- Marketing messaging and featurettes
  ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->



		<!-- Three columns of text below the carousel -->


		<!-- /.col-lg-4 -->
		<div class="row featurette">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading" style="color: red;">LEARN ABOUT
					DONATION</h2>
				<p class="lead">After donating blood, the body works to
					replenish the blood loss. This stimulates the production of new
					blood cells and in turn, helps in maintaining good health.</p>
			</div>
			<div class="col-md-5 order-md-1">
				<img alt="" src="img/bloodimg1.jpg" style="width: 500px">
			</div>
		</div>

		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading" style="color: red;">Join the
					Cause</h2>
				<p class="lead">Join our cause and help us save more lives.
					Everyone should have the right to get a blood transfusion.</p>
			</div>
			<div class="col-md-5">
				<img alt="" src="img/BloodTable.png" style="width: 500px">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading" style="color: red;">TYPES OF
					DONATION</h2>
				<p class="lead">The human body contains five liters of blood,
					which is made of several useful components i.e. Whole blood,
					Platelet, and Plasma. Each type of component has several medical
					uses and can be used for different medical treatments. your blood
					donation determines the best donation for you to make.</p>
			</div>
			<div class="col-md-5 order-md-1">
				<img alt="" src="img/savelife.svg">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">Answer to Emergencies</h2>
				<p class="lead">As soon as a new blood request is raised, it is
					routed among our local volunteer blood donors. We know time
					matters! So we keep you updated with real-time notifications sent
					directly to you via SMS (text message) or the installed mobile app</p>
			</div>
			<div class="col-md-5">
				<img alt="" src="img/connect.svg">
			</div>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->

		</div>
		<!-- /.container -->


		<!-- FOOTER -->
		<footer class="container">
			<p class="float-end">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy; Developed By Biswajita &middot; <a href="#"></a>
				&middot; <a href="#">Terms</a>
			</p>
		</footer>
	</main>












	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>