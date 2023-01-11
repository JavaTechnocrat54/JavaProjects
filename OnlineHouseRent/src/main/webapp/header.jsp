 <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
        <div class="container-fluid nav-bar bg-transparent">
           
                <%
		if ((String) session.getAttribute("uname") != null) {
	%>
	 <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
                <a href="index.html" class="navbar-brand d-flex align-items-center text-center">
                    <div class="icon p-2 me-2">
                        <img class="img-fluid" src="img/icon-deal.png" alt="Icon" style="width: 30px; height: 30px;">
                    </div>
                    <h1 class="m-0 text-primary">Makaan</h1>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <a href="index.jsp" class="nav-item nav-link active">Home</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Property</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="ProperList.jsp" class="dropdown-item">Property List</a>
                                <a href="Propertype.jsp" class="dropdown-item">Property Type</a>
                                <a href="PropertyAgent.jsp" class="dropdown-item">Property Agent</a>
                            </div>
                        </div>
                       
                        <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                    
               
   <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><%=session.getAttribute("uname")%></a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="customer-profile.jsp" class="dropdown-item">MyProfile</a>
                                <a href="customer-viewBooking.jsp" class="dropdown-item">MyBooking</a>
                                <a href="customer-change-password.jsp" class="dropdown-item">Setting</a>
                                <a href="logout.jsp" class="dropdown-item">Logout</a>
                            </div>
                        </div>
            </nav>
	
	<%
		} else {
			
	%>
	 <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
                <a href="index.html" class="navbar-brand d-flex align-items-center text-center">
                    <div class="icon p-2 me-2">
                        <img class="img-fluid" src="img/icon-deal.png" alt="Icon" style="width: 30px; height: 30px;">
                    </div>
                    <h1 class="m-0 text-primary">Makaan</h1>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <a href="index.jsp" class="nav-item nav-link active">Home</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Property</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                 <a href="ProperList.jsp" class="dropdown-item">Property List</a>
                                <a href="Propertype.jsp" class="dropdown-item">Property Type</a>
                                <a href="PropertyAgent.jsp" class="dropdown-item">Property Agent</a>
                            </div>
                        </div>
                       <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Customer</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                 <a href="customer-login.jsp" class="dropdown-item">CustomerLogin</a>
                                <a href="customer-account.jsp" class="dropdown-item">CustomerRegiser</a>
                              
                            </div>
                        </div>
                          <a href="adminlogin.jsp" class="nav-item nav-link">AdminLogin</a>
                        <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                    </div>
                    <a href="customer-login.jsp" class="btn btn-primary px-3 d-none d-lg-flex">Login</a>
                </div>
            </nav>
            <%} %>
        </div>
        <!-- Navbar End -->


       


      
