
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
					<a class="logo" href="customer-dashboard.jsp"><span class="sub-logo"
						style="color: #EB4747; font-family: 'Arima Madurai', cursive; font-size: 2vw;">Disaster
							<span
							style="color: #EB4747; font-family: 'Unica One', cursive !important;">Management</span>
					</span></a>
				</div>
				

				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">

						<li><a href="customer-dashboard.jsp" title="Home">Home</a></li>

						

						<li><a href="customerviewCampain.jsp">Campaign</a>
							</li>

						<li><a href="Customerdonate.jsp">Donate</a>
							</li>
							<li><a href="CustomerViewDonation.jsp">ViewDonation</a>
							</li>
							<li><a href="RequestForVol.jsp">Request</a>
							</li>
							<li><a href="ViewMyRequest.jsp">ViewRequest</a>
							</li>
						
						<li><a href="#"><%=session.getAttribute("uname")%></a>
							<ul class="drop-down">

								<li class="drop"><a href="customerViewProfile.jsp">MyProfile</a></li>
								<li><a href="CustomerChangePassword.jsp" title="FAQ">Setting</a></li>
								<li><a href="logout.jsp" title="FAQ">Logout</a></li>



							</ul></li>
					</ul>
				


					</div>
				</div>
			</div>
	</section>

</header>
<!-- end main-header  -->