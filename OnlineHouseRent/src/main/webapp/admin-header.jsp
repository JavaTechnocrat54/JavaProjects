<!-- Spinner Start -->
<div id="spinner"
	class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
	<div class="spinner-border text-primary"
		style="width: 3rem; height: 3rem;" role="status">
		<span class="sr-only">Loading...</span>
	</div>
</div>
<!-- Spinner End -->


<!-- Navbar Start -->
<div class="container-fluid nav-bar bg-transparent">
	<nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
		<a href="index.html"
			class="navbar-brand d-flex align-items-center text-center">
			<div class="icon p-2 me-2">
				<img class="img-fluid" src="img/icon-deal.png" alt="Icon"
					style="width: 30px; height: 30px;">
			</div>
			<h1 class="m-0 text-primary">Makaan</h1>
		</a>
		<button type="button" class="navbar-toggler" data-bs-toggle="collapse"
			data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto">
				<a href="admin-dashboard.jsp" class="nav-item nav-link active">Home</a> <a
					href="admin-add-house.jsp" class="nav-item nav-link">Add House</a>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown">View</a>
					<div class="dropdown-menu rounded-0 m-0">
						<a href="admin-veiw-booking.jsp" class="dropdown-item">ViewBooking</a> <a
							href="admin-view-customer.jsp" class="dropdown-item">ViewCustomer</a> <a
							href="admin-view-contact.jsp" class="dropdown-item">ViewContact</a>
					</div>
				</div>

				


				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown"><%=session.getAttribute("uname")%></a>
					<div class="dropdown-menu rounded-0 m-0">
						<a href="admin-profile.jsp" class="dropdown-item">MyProfile</a>
						 <a
							href="admin-change-password.jsp" class="dropdown-item">Setting</a>
						<a href="logout.jsp" class="dropdown-item">Logout</a>
					</div>
				</div>
	</nav>
</div>