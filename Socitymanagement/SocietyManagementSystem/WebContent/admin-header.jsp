<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-default top-navbar" role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".sidebar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index-2.html"><strong>SMS</strong></a>

		<div id="sideNav" href="#">
			<i class="fa fa-caret-right"></i>
		</div>
	</div>
	<ul class="nav navbar-top-links navbar-right">
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#" aria-expanded="false"> <i
				class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
		</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="admin-profile.jsp"><i class="fa fa-user fa-fw"></i>
						User Profile</a></li>
				<li><a href="admin-change-password.jsp"><i
						class="fa fa-gear fa-fw"></i> Settings</a></li>
				<li class="divider"></li>
				<li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i>
						Logout</a></li>
			</ul> <!-- /.dropdown-user --></li>
		<!-- /.dropdown -->
	</ul>
</nav>
<!--/. NAV TOP  -->
<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">

			<li><a class="active-menu" href="admin-dashboard.jsp"><i
					class="fa fa-home"></i> Dashboard</a></li>
			<li><a href="#"><i class="fa fa-edit"></i>Flats<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="add-flats.jsp">Add Flats</a></li>
					<li><a href="admin-manage-flats.jsp">Manage Flats</a></li>
				</ul>
			</li>
			<li><a href="#"><i class="fa fa-thumbs-up"></i>Allotments<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="admin-add-allotment.jsp">Add Allotment</a></li>
					<li><a href="admin-manage-allotments.jsp">Manage Allotment</a></li>
				</ul>
			</li>
			<li><a href="#"><i class="fa fa-book"></i>Bills<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="admin-add-bill.jsp">Add Bills</a></li>
					<li><a href="admin-manage-bills.jsp">Manage Bills</a></li>
				</ul>
			</li>
			<li><a href="#"><i class="fa fa-edit"></i>Complaints<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="admin-view-complaints.jsp">All Complaints</a></li>
					<li><a href="admin-view-pending-complaints.jsp">Pending Complaints</a></li>
					<li><a href="admin-view-inprogress-complaints.jsp">In Progress</a></li>
					<li><a href="admin-view-resolved-complaints.jsp">Resolved Complaints</a></li>
					
				</ul>
			</li>
			<li><a href="#"><i class="fa fa-edit"></i>Visitors<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="admin-add-visitors.jsp">Add Visitor</a></li>
					<li><a href="admin-view-visitors.jsp">Manage Visitors</a></li>
				</ul>
			</li>
			<li><a href="admin-search-allotments.jsp"><i class="fa fa-search"></i> Search</a></li>
			<li><a href="admin-view-all-visitors-report.jsp"><i class="fa fa-table"></i> Reports</a></li>

			<li><a href="view-contacts.jsp"><i class="fa fa-fw fa-users"></i>
					View Contacts</a></li>

		</ul>
	</div>
</nav>
