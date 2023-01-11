<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Medico</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
   <link rel="icon" href="img/favicon.png">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
   <jsp:include page="admin-header.jsp"></jsp:include>
   <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">AddMedicine</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Admin</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">AddMedicine</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
       <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                
               
                
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                  <img alt="" src="img/maeicint-removebg-preview.png" width="500">
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <div class="h-100" style="min-height: 4000px;">
                         <div class="bg-light rounded p-5">
                        <p class="d-inline-block border rounded-pill py-1 px-4 bg-pr">AddMedicine</p>
                        <form action="AddMedicine" method="post" enctype='multipart/form-data'>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                  <%
                                    int id=DatabaseConnection.generateMedicineId();
                                    %>
                                        <input type="text" class="form-control" name="id" value="<%=id %>" placeholder="Your Name" readonly="readonly">
                                        <label for="name">MedicineID</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                   <div class="form-floating">
                                        <input type="text" class="form-control" name="name" placeholder="Your Name">
                                        <label for="name">Medicine Name</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                      <select
										class="form-control" name="mType">
										<option value="null">Medicine Type</option>
										<option>Allopathy Medicines</option>
										<option>Ayurveda Products</option>
										<option>Generic Medicines</option>
									</select>
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <div class="form-floating">
                                        <input type="file" class="form-control" name="Photo" placeholder="Photo">
                                        <label for="Photo">Photo</label>
                                    </div>
                                </div>
                                 <div class="col-12">
                                    <div class="form-floating">
                                        <textarea class="form-control" placeholder="Leave a message here" name="message" style="height: 100px"></textarea>
                                        <label for="message">Description</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Add Medicine</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


   <jsp:include page="footer.jsp"></jsp:include>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>