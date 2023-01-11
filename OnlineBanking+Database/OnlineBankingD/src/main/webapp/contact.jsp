<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="zxx">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>APANA-BANK</title>
<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css2?family=Poppins:wght@300;600;700&display=swap"
	rel="stylesheet">
<!-- google fonts -->
<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style-starter.css">
<!-- Template CSS -->
</head>

<body>
	<!--header-->
	<header id="site-header" class="fixed-top">
		<div class="container">
			<jsp:include page="design-side-header.jsp"></jsp:include>
		</div>
		<!-- //toggle switch for light and dark theme -->
	</header>
	<!-- //header -->
	<!-- about breadcrumb -->
	<section class="w3l-about-breadcrumb text-left">
		<div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
			<div class="container">
				<h2 class="title">Contact</h2>
				<ul class="breadcrumbs-custom-path mt-2">
					<li><a href="#url">Home</a></li>
					<li class="active"><span class="fa fa-arrow-right mx-2"
						aria-hidden="true"></span> Contact</li>
				</ul>
			</div>
		</div>
	</section>
	<!-- //about breadcrumb -->
	<!-- /contact-->
	<div class="contact-form py-5" id="contact">
		<div class="container py-lg-5 py-md-4">
			<h3 class="hny-title mb-lg-5 mb-4">Get in touch</h3>
			<div class="contacts12-main mb-5">
				<form action="Contact" method="post">
					<div class="main-input">
						<div class="d-grid">
							<input type="text" name="fullname" id="w3lName"
								placeholder="Your Name" class="contact-input" /> <input
								type="text" name="phone" id="phone" placeholder="Mobile Number"
								class="contact-input" />
						</div>
						<div class="d-grid">
							<input type="email" name="email" id="email"
								placeholder="Your Email id" class="contact-input" required /> <input
								type="text" name="subject" id="subject" placeholder="Subject"
								class="contact-input" />
						</div>
					</div>
					<textarea class="contact-textarea" name="message" id="message"
						placeholder="Type your message here" required></textarea>
					<div class="text-right">
						<input type="submit"
							class="btn btn-style btn-secondary btn-contact">
					</div>
				</form>
			</div>

			<div class="row pt-lg-4">
				<div class="col-md-12">
					<div class="row">
						<div class="col-lg-4 col-md-6">
							<div class="contact-address">
								<ul>
									<li class="icon-color"><span class="fa fa-map-marker"></span>
										<span>Maharashtra, India. </span></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 mt-md-0 mt-4">
							<div class="contact-address">
								<ul>
									<li class="icon-color"><span class="fa fa-phone"></span> <span><a
											class="" href="tel:+(91)-0000000000">Phone
												:+(91)-0000000000</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 mt-lg-0 mt-4">
							<div class="contact-address">
								<ul>
									<li class="icon-color"><span class="fa fa-mail-reply"></span><span>
											<a href="mailto:agricultureinfo@mail.com">
												apnaOnline@mail.com</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="maphny">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387190.2895687731!2d-74.26055986835598!3d40.697668402590374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1562582305883!5m2!1sen!2sin"
			frameborder="0" style="border: 0" allowfullscreen=""></iframe>
	</div>
	<!--/w3l-footer-29-main-->
	<jsp:include page="mainfooter.jsp"></jsp:include>		<script>
			// When the user scrolls down 20px from the top of the document, show the button
			window.onscroll = function() {
				scrollFunction()
			};

			function scrollFunction() {
				if (document.body.scrollTop > 20
						|| document.documentElement.scrollTop > 20) {
					document.getElementById("movetop").style.display = "block";
				} else {
					document.getElementById("movetop").style.display = "none";
				}
			}

			// When the user clicks on the button, scroll to the top of the document
			function topFunction() {
				document.body.scrollTop = 0;
				document.documentElement.scrollTop = 0;
			}
		</script>
		<!-- /move top -->
	</section>
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

</body>

</html>