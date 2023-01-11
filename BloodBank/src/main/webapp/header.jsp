
<!--  HEADER -->

<header class="main-header clearfix" data-sticky_header="true">

	<div class="top-bar clearfix">

		<div class="container">

			<div class="row">

				<div class="col-md-8 col-sm-12">

					<p>
						<span><i class="fa fa-building-o"></i> <strong>Contact:
						</strong> East Shibgonj, Sylhet, 3100</span> <span>&nbsp;<i
							class="fa fa-phone"></i> <strong>Call Us:</strong>
							+880-1891-82709
						</span>
					</p>

				</div>

				<div class="col-md-4col-sm-12">
					<div class="top-bar-social">
						<a href="#"><i class="fa fa-facebook rounded-box"></i></a> <a
							href="#"><i class="fa fa-twitter rounded-box"></i></a> <a
							href="#"><i class="fa fa-google-plus rounded-box"></i></a> <a
							href="#"><i class="fa fa-instagram rounded-box"></i></a> <a
							href="#"><i class="fa fa-youtube rounded-box"></i></a>
					</div>
				</div>

			</div>

		</div>
		<!--  end .container -->

	</div>
	<!--  end .top-bar  -->

	<section class="header-wrapper navgiation-wrapper">

		<div class="navbar navbar-default">
			<div class="container">

				<div class="navbar-header">
					<!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button> -->
					<a class="logo" href="index.html"><span class="sub-logo"
						style="color: #EB4747; font-family: 'Arima Madurai', cursive; font-size: 2vw;">Blood
							<span
							style="color: #EB4747; font-family: 'Unica One', cursive !important;">BANK</span>
					</span></a>
				</div>
				<%
				if (session.getAttribute("uanme") != null && session.getAttribute("uname") != " ") {
				%>


				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">

						<li><a href="index.html" title="Home">Home</a></li>

						<li><a href="about-us.html" title="About Us">About Us</a></li>

						<li><a href="#">Campaign</a>
							<ul class="drop-down">
								<li><a href="events.html">All Campaigns</a></li>
								<li><a href="event-single.html">Single Campaign</a></li>
							</ul></li>

						<li class="drop"><a href="#">Customer</a>
							<ul class="drop-down">

								<li class="drop"><a href="#">Login</a></li>


								<li><a href="faq.html" title="FAQ">Register</a></li>

							</ul></li>
						<li class="drop"><a href="#">Admin</a>
							<ul class="drop-down level3">
								<li><a href="Regestration.html">Login</a></li>


							</ul></li>

						<li><a href="contact.html">Contact</a></li>
						<li><a href="contact.html"><%=session.getAttribute("uname") %></a>
							<ul class="drop-down">

								<li class="drop"><a href="#">MyProfile</a></li>
<li><a href="faq.html" title="FAQ">Setting</a></li>
<li><a href="logout.jsp" title="FAQ">Logout</a></li>

								

							</ul></li></ul>
						<%
						} else {
						%>
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav navbar-right">

								<li><a href="index.jsp" title="Home">Home</a></li>

								<li><a href="about-us.html" title="About Us">About Us</a></li>

								<li><a href="#">Campaign</a>
									<ul class="drop-down">
										<li><a href="events.html">All Campaigns</a></li>
										<li><a href="event-single.html">Single Campaign</a></li>
									</ul></li>

								<li class="drop"><a href="#">Customer</a>
									<ul class="drop-down">

										<li class="drop"><a href="customer-login.jsp">Login</a></li>


										<li><a href="Registation.jsp" title="FAQ">Register</a></li>

									</ul></li>
								<li class="drop"><a href="#">Admin</a>
									<ul class="drop-down level3">
										<li><a href="admin-login.jsp">Login</a></li>


									</ul></li>

								<li><a href="contact.html">Contact</a></li></ul>
								<%
								}
								%>

							
						</div>
				</div>
			</div>
	</section>

</header>
<!-- end main-header  -->