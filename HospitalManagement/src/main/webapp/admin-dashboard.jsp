<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
   <br>
   <br>
   <br>
   <br>
     <div class="clearfix"></div>
			<div class="row">
				<div class="col-md-12 col-sm-12  ">
					<div class="x_panel">
						<div class="x_content">
							<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
									<div class="alert alert-default back-widget-set text-center">
										<%
										int countDoctor = 0;
										ResultSet Doctor = DatabaseConnection.getResultFromSqlQuery("select count(*) from tbldoctor");
										Doctor.next();
										countDoctor = Doctor.getInt(1);
											
										%>
										<i class="fas fa-user-md fa-5x"></i>
										<h3>
											<font color="#FF9933"><span class="counter"><%=countDoctor%></span></font>
										</h3>
										<strong style="text-transform: uppercase; font-size: 15px;"><a
											href="admin-Veiw-doctor.jsp" class="text-dark" target="_blank">Total Doctors</a></strong>
									</div>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
									<div class="alert alert-default back-widget-set text-center">
										<%
											int countMedicines = 0;
											ResultSet rsMedicines = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblmedicine");
											rsMedicines.next();
											countMedicines = rsMedicines.getInt(1);
										%>
										<i class="fa fa-medkit fa-5x"></i>
										<h3>
											<font color="#FF9933"><span class="counter"><%=countMedicines %></span></font>
										</h3>
										<strong style="text-transform: uppercase; font-size: 15px;"><a
											href="admin-view-medicine.jsp" class="text-dark" target="_blank">Total Medicines</a></strong>
									</div>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
									<div class="alert alert-default back-widget-set text-center">
										<%
										int countAppointment = 0;
										ResultSet rsAppointment = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblappointment");
										rsAppointment.next();
										countAppointment = rsAppointment.getInt(1);
											
										%>
										<i class="fas fa-calendar-check fa-5x"></i>
										<h3>
											<font color="#FF9933"><span class="counter"><%=countAppointment%></span></font>
										</h3>
										<strong style="text-transform: uppercase; font-size: 15px;"><a
											href="admin-manage-appoiment.jsp" class="text-dark" target="_blank">Total Appoiment</a></strong>
									</div>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
									<div class="alert alert-default back-widget-set text-center">
										<%
											int countCustomers = 0;
											ResultSet rsCustomers = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcustomer");
											rsCustomers.next();
											countCustomers = rsCustomers.getInt(1);
										%>
										<i class="fa fa-users fa-5x"></i>
										<h3>
											<font color="#FF9933"><span class="counter"><%=countCustomers %></span></font>
										</h3>
										<strong style="text-transform: uppercase; font-size: 15px;"><a
											href="admin-view-customers.jsp" class="text-dark" target="_blank">Total Customers</a></strong>
									</div>
								</div>
								<div class="row">
								
								<div class="col-md-3 col-sm-3 col-xs-6 shadow p-3 mb-5">
									<div class="alert alert-default back-widget-set text-center">
										<%
										int countContact = 0;
										ResultSet rsContact = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcontact");
										rsContact.next();
										countContact = rsContact.getInt(1);
											
										%>
										<i class="fas fa-address-book fa-5x"></i>
										<h3>
											<font color="#FF9933"><span class="counter"><%=countContact%></span></font>
										</h3>
										<strong style="text-transform: uppercase; font-size: 15px;"><a
											href="admin-view-contact.jsp" class="text-dark" target="_blank">Total Conatact</a></strong>
									</div>
								</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
     

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