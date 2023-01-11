
<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html">Car<span>Book</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.jsp"
						class="nav-link">Home</a></li>
						<%if(session.getAttribute("uname")!=null && session.getAttribute("email")!=null)
						{
							
						%>
						<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
					<li class="nav-item"><a href="services.html" class="nav-link">Services</a></li>
					<li class="nav-item"><a href="pricing.jsp" class="nav-link">Pricing</a></li>
					<li class="nav-item"><a href="car.jsp" class="nav-link">Cars</a></li>
				
					<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
					<li class="nav-item"><a href="mybookin.jsp" class="nav-link">MYbooking</a></li>
					<li class="nav-item"><a href="#" class="nav-link"><%=session.getAttribute("uname") %></a></li>
					<li class="nav-item"><a href="logout.jsp" class="nav-link">LogOut</a></li>
						<%}else{
					%>
				
					<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
					<li class="nav-item"><a href="services.html" class="nav-link">Services</a></li>
					<li class="nav-item"><a href="pricing.jsp" class="nav-link">Pricing</a></li>
					<li class="nav-item"><a href="car.jsp" class="nav-link">Cars</a></li>
						<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
					
					<li class="nav-item"><a href="customer-login.jsp" class="nav-link">CustomerLogin</a></li>
					
					<li class="nav-item"><a href="admin-login.jsp" class="nav-link">AdminLogin</a></li>
					<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
				</ul>
				<%}
					%>
				
			</div>
		</div>
	</nav>