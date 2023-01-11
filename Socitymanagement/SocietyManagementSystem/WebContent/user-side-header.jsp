<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Navigation Bar-->
<header id="topnav">
	<div class="topbar-main">
		<div class="container">
			<!-- LOGO -->
			<div class="topbar-left">
				<a href="user-dashboard.jsp" class="logo"> <i
					class="zmdi zmdi-group-work icon-c-logo"></i> <span>Society
						Management System</span>
				</a>
			</div>
			<!-- End Logo container-->
			<div class="menu-extras navbar-topbar">
				<ul class="list-inline float-right mb-0">
					<li class="list-inline-item">
						<!-- Mobile menu toggle--> <a class="navbar-toggle">
							<div class="lines">
								<span></span> <span></span> <span></span>
							</div>
					</a> <!-- End mobile menu toggle-->
					</li>
					<li class="list-inline-item dropdown notification-list"><a
						class="nav-link dropdown-toggle waves-effect waves-light nav-user"
						data-toggle="dropdown" href="#" role="button"
						aria-haspopup="false" aria-expanded="false"> <img
							src="assets/images/users/avatar-1.jpg" alt="user"
							class="rounded-circle">
					</a>
						<div class="dropdown-menu dropdown-menu-right profile-dropdown "
							aria-labelledby="Preview">
							<!-- item-->
							<div class="dropdown-item noti-title">
								<h5 class="text-overflow">
									<small>Welcome ! <%=session.getAttribute("memberName") %></small>
								</h5>
							</div>

							<!-- item-->
							<a href="user-profile.jsp" class="dropdown-item notify-item"> <i
								class="zmdi zmdi-account-circle"></i> <span>Profile</span>
							</a>
							</a> <a href="logout.jsp" class="dropdown-item notify-item"> <i
								class="zmdi zmdi-power"></i> <span>Logout</span>
							</a>

						</div>
					</li>
				 </ul>
			</div>
			<!-- end menu-extras -->
			<div class="clearfix"></div>

		</div>
		<!-- end container -->
	</div>
	<!-- end topbar-main -->
	<div class="navbar-custom">
		<div class="container">
			<div id="navigation">
				<!-- Navigation Menu-->
				<ul class="navigation-menu">
					<li><a href="user-dashboard.jsp"><i
							class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a></li>
					<li><a href="user-view-bills.jsp"><i
							class="zmdi zmdi-view-dashboard"></i> <span> View Bill </span> </a></li>
					<li><a href="user-view-visitors.jsp"><i
							class="zmdi zmdi-view-dashboard"></i> <span> Visitors </span> </a></li>
					<li class="has-submenu"><a href="user-fill-complaint.jsp"><i
							class="zmdi zmdi-collection-text"></i> <span> Fill Complaint </span> </a>
						<ul class="submenu megamenu">
							<li>
								<ul>
									<li><a href="user-fill-complaint.jsp">Fill Complaint</a></li>
									<li><a href="user-view-complaint-status.jsp">Complaint Status</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li><a href="user-search-visitors.jsp"><i
							class="zmdi zmdi-view-dashboard"></i> <span> Search </span> </a></li>
					<li><a href="user-check-report.jsp"><i
							class="zmdi zmdi-view-dashboard"></i> <span> Report </span> </a></li>
				</ul>
				<!-- End navigation menu  -->
			</div>
		</div>
	</div>
</header>
<!-- End Navigation Bar-->