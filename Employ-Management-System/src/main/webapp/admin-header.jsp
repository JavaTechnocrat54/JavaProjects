 <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-lg-between">

      <h1 class="logo me-auto me-lg-0"><a href="index.html">Employeemanagement<span>.</span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto " href="admin-dashbord.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="admin-view-employ.jsp">Employ</a></li>
          <li><a class="nav-link scrollto" href="admin-assign-task.jsp">Task</a></li>
          <li><a class="nav-link scrollto" href="admin-view-coplain.jsp">Complain</a></li>
          <li><a class="nav-link scrollto" href="admin-manage-events.jsp">Events</a></li>
          <li class="dropdown"><a href="#"><span><%=session.getAttribute("uname") %></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">MyProfile</a></li>
             
          <li><a class="nav-link scrollto" href="logout.jsp">Logout</a></li>
        </ul>
        
      </nav><!-- .navbar -->

     

    </div>
  </header><!-- End Header -->
