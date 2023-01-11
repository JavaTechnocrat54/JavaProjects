
<!DOCTYPE html>
<html>
<head>
 
</head>
<body>
<!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->



	 <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0 wow fadeIn" data-wow-delay="0.1s">
        <a href="index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h1 class="m-0 text-primary"><i class="far fa-hospital me-3"></i>Medico</h1>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="admin-dashboard.jsp" class="nav-item nav-link active">Home</a>
              
                 <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Medicine</a>
                    <div class="dropdown-menu rounded-0 rounded-bottom m-0">
                    <a href="admin-add-medicine.jsp" class="dropdown-item">AddMedicine</a>
                        <a href="admin-view-medicine.jsp" class="dropdown-item">ViewMedicine</a>
                        
                        </div>
                    </div>
                 <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Doctor</a>
                    <div class="dropdown-menu rounded-0 rounded-bottom m-0">
                    <a href="admin-add-doctor.jsp" class="dropdown-item">AddDoctor</a>
                        <a href="admin-Veiw-doctor.jsp" class="dropdown-item">ViewDoctor</a>
                        
                     </div>   
                    </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><%=session.getAttribute("uname")%></a>
                    <div class="dropdown-menu rounded-0 rounded-bottom m-0">
                    <a href="admin-change-password.jsp" class="dropdown-item">MyProfile</a>
                       
                        <a href="logout.jsp" class="dropdown-item">Logout</a>
                        
                    </div>
                </div>
                <a href="admin-view-contact.jsp" class="nav-item nav-link">ViewContact</a>
            
    </nav>
    <!-- Navbar End -->
	
	
   
</body>
</html>