<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
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
            <h1 class="display-3 text-white mb-3 animated slideInDown">ViewContact</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Admin</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">ViewContact</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
 <div class="container-fluid">    
<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						<i class="fa fa-medkit"></i> Contact
					</h3>
				</div>
			</div>
			<div class="clearfix"></div>
			<%
				String editmessage = (String) session.getAttribute("success");
				if (editmessage != null) {
				session.removeAttribute("success");
			%>
			<div class="alert alert-info" id="info">Contact information updated.</div>
			<%
				}
			%>
			<%
				String deleteContact = (String) session.getAttribute("medicine");
				if (deleteContact != null) {
				session.removeAttribute("medicine");
			%>
			<div class="alert alert-danger" id="danger">Contact deleted.</div>
			<%
				}
			%>
			<div class="row">
				<div class="col-md-12 col-sm-12  ">
					<div class="x_panel">
						<div class="x_title">
							<h2>List of Contacts</h2>
							
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<table id="datatable" class="table table-striped table-bordered"
								style="width: 100%">
								<thead>
									<tr>
										<th>Id</th>
										<th>Name</th>
										<th>Email</th>
										<th>PhoneNumber</th>
										<th>Gender</th>
										<th>Dob</th>
										<th>Address</th>
									</tr>
								</thead>

								<%
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer");
									while (resultset.next()) {
								%>
								<tbody>
									<tr>
										<td><%=resultset.getInt("id")%></td>
							
										<td><%=resultset.getString("name")%></td>
										<td><%=resultset.getString("email")%></td>
										<td><%=resultset.getString("mobile")%></td>
										<td><%=resultset.getString("gender")%></td>
										<td><%=resultset.getString("dob")%></td>
										<td><%=resultset.getString("address")%></td>
										
										
										
										<td>  <a
											href="admin-delate-customer.jsp?Id=<%=resultset.getInt("id")%>"
											class="btn btn-sm btn-danger text-white" onclick="return confirm('Are you sure do you want to delete this ?');"><i
												class="fa fa-trash"></i> delete</a></td>
									</tr>
								</tbody>
								<%
									}
								%>
							</table>
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