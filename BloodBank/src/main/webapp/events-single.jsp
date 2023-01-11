<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.DatabaseConnection"%>
<html lang="en">
<!--<![endif]-->


<!-- Mirrored from templates.bwlthemes.com/blood_donation/v_2/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Jul 2022 14:37:50 GMT -->
<head>
<meta charset="utf-8">
<title>Blood Buddies - Blood Donation Campaign & Multi-Concept
	Activism Template</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description"
	content="Reddrop Buddies - Blood Donation Campaign & Multi-Concept Activism Template">
<meta name="author" content="xenioushk">
<link rel="shortcut icon" href="images/favicon.png" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

<!-- The styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css">
<link href="css/venobox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/styles.css" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Oswald&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Raleway:wght@200&family=Unica+One&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Coda&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Arima+Madurai&display=swap')
	;

body {
	font-family: 'Oswald', sans-serif !important;
}

.logo {
	padding-top: 9px !important;
	border: #1B2430 solid 2px;
}

.logo:hover {
	background-color: #1B2430;
}

.logo1 {
	padding-top: 9px !important;
	border: #FFFFDE solid 2px;
}

.logo1:hover {
	background-color: #06283D;
}

.sub-logo {
	padding: 4px;
}

.sub-logo1 {
	padding: 10px;
}

.navbar-nav li a {
	font-family: 'Unica One', cursive !important;
	font-size: 1.2vw !important;
}

.navbar-nav li a:hover {
	text-decoration: underline;
	text-underline-offset: 5px;
	color: #EB1D36 !important;
}

.top-bar {
	background-color: #1B2430 !important;
}
</style>
<body>

	<div id="preloader">
		<span class="margin-bottom"><img src="images/loader.gif" alt="" /></span>
	</div>

	<jsp:include page="customer-side-header.jsp"></jsp:include>

	<!--  HOME SLIDER BLOCK  -->
	 <section class="page-header" data-stellar-background-ratio="1.2">

            <div class="container">

                <div class="row">

                    <div class="col-sm-12 text-center">


                        <h3>
                            Event Single Page
                        </h3>

                        <p class="page-breadcrumb">
                            <a href="#">Home</a> / <a href="#">Events</a> / Single Event
                        </p>


                    </div>

                </div> <!-- end .row  -->

            </div> <!-- end .container  -->

        </section> <!-- end .page-header  -->

        <section class="section-content-block">

            <div class="container">

                <div class="row">



                    <div class="article-event clearfix">

                        <div class="col-sm-12">

                            <article class="post single-post-inner">

                                <div class="post-inner-featured-content">
                                    <img alt="" src="images/event_single.jpg">
                                </div>


                                <div class="single-post-inner-title">
                                    <h2>International Blood Donation Day-2017</h2>
                                    <p class="single-post-meta"><i class="fa fa-user"></i>&nbsp; Deborah Beck &nbsp; &nbsp; <i class="fa fa-share"></i>&nbsp; Blood, Save Life</p>
                                </div>

                                <div class="single-post-inner-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis necessitatibus magni optio nobis dicta esse quas molestias deserunt et, sint fuga debitis asperiores dolorum illum soluta quae eos itaque nemo.</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis tenetur nulla consequatur. Facere eaque quod assumenda dolorem beatae, nulla et rem quisquam possimus vitae, commodi optio sunt fugit? Illo, itaque debitis. Amet, ex pariatur dolores cupiditate provident recusandae veritatis voluptatibus velit eius quos impedit nulla saepe iste dolor assumenda reprehenderit laborum itaque id. Voluptatum sit ipsam provident officiis, aspernatur aliquid.</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa doloremque incidunt ad nobis quod natus, repudiandae suscipit iste error laudantium aperiam, quae, eum aspernatur hic facere officiis architecto totam quis ea nostrum consequuntur? Veniam qui ad tempore, dicta obcaecati veritatis eaque voluptatem saepe animi. Magnam nemo dolor excepturi eligendi, repellendus.</p>

                                </div>


                            </article> <!--  end single-post-container --> 


                        </div> <!--  end .single-post-container -->

                        <div class="col-sm-4">

                            <h4 class="event-content-title">Details</h4>

                            <p class="event-content-info">

                                <span class="event-sub-content-title">Date:  <em class="date">August 17, 2016</em></span>

                                <span class="event-sub-content-title">Cost:</span>
                                Free 
                                <span class="event-sub-content-title">Event Category:</span>
                                <a href="#">Main Events</a>
                                <span class="event-sub-content-title">Website:</span>
                                <a href="#" title="www.codeecstasy.com ">http://www.codeecstasy.com </a> 
                            </p>
                        </div> <!-- end .col-sm-4  -->

                        <div class="col-sm-4">

                            <h4 class="event-content-title">Organizer</h4>

                            <p class="event-content-info">
                                Blood Donation Center <br />
                                <span class="event-sub-content-title">Phone:</span>
                                01 4537 8639 243  <br />
                                <span class="event-sub-content-title">Email:</span>
                                <a href="#" title="info@codeecstasy.com">info@codeecstasy.com </a>
                                <span class="event-sub-content-title">Website:</span>
                                <a href="#" title="www.codeecstasy.com ">http://booking.codeecstasy.com </a>
                            </p>  

                        </div> <!-- end .col-sm-4  -->

                        <div class="col-sm-4">

                            <h4 class="event-content-title">Venue</h4>

                            <p class="event-content-info">
                                Almond Street <br />
                                42 Almond St <br />
                                Laredo, TX 78041 United States + Google Map <br />
                                <span class="event-sub-content-title">Phone:</span>
                                01 8745 4362 329 <br />
                                <span class="event-sub-content-title">Website:</span>
                                <a href="#" title="www.codeecstasy.com ">http://venue.codeecstasy.com </a>
                            </p>


                        </div> <!-- end .col-sm-4  -->

                    </div>

                    <div class="article-author clearfix">

                        <div class="col-sm-12">

                            <div id="map_canvas"></div>

                        </div>

                    </div>

                </div> <!--  end .row  -->


                <div class="row">

                    <div class="article-author clearfix">

                        <div class="topic-bold-header clearfix">
                            <h4>Event Created by <a href="#">Deborah Beck</a></h4>
                        </div> <!-- end .topic-bold-header  -->

                        <figure class="author-avatar">
                            <a href="#">
                                <img src="images/user_1.jpg" alt="Avatar">
                            </a>
                        </figure>

                        <div class="about_author">
                            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam feugiat vitae ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                        </div>

                        <div class="social-icons margin-top-11 clearfix">
                            <a class="fa fa-facebook social_icons" href="#" data-original-title="Facebook"></a>
                            <a class="fa fa-twitter social_icons" href="https://twitter.com/#" data-original-title="Twitter"></a>
                            <a class="fa fa-flickr social_icons" href="http://www.flickr.com/photos/#" data-original-title="Flickr"></a>
                            <a class="fa fa-youtube social_icons" href="http://www.youtube.com/#" data-original-title="Youtube"></a>
                            <a class="fa fa-linkedin social_icons" href="#" data-original-title="Linkedin"></a>
                        </div>

                    </div> <!-- end .article-author  -->

                    <div class="post-nav-section clearfix">

                        <a class="btn btn-primary fr" href="#">Next Event <i class="fa fa-angle-double-right"></i></a>
                        <a class="btn btn-primary" href="#"><i class="fa fa-angle-double-left"></i> Previous Event</a>

                    </div> <!-- end .post-nav-section  -->

                </div>

            </div> <!--  end container -->

        </section> <!-- end .section-content-block  -->   
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Back To Top Button  -->

	<a id="backTop">Back To Top</a>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.backTop.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/waypoints-sticky.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/venobox.min.js"></script>
	<script src="js/custom-scripts.js"></script>
</body>


<!-- Mirrored from templates.bwlthemes.com/blood_donation/v_2/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Jul 2022 14:38:10 GMT -->
</html>