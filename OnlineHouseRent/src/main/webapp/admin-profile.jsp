<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Makaan</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
      <jsp:include page="admin-header.jsp"></jsp:include>
        <!-- Header Start -->
        
<br><br>


	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						<i class="fa fa-user"></i> Profile
					</h3>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-12 col-sm-12  ">
					<div class="x_panel">
						<div class="x_title">
							<h2>Profile Information</h2>
							<div class="clearfix"></div>
						</div>
						<%
							ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tbladmin where uname='"
								+ session.getAttribute("uname") + "' and email_id='" + session.getAttribute("email") + "'");
							if (resultset.next()) {
						%>
						<div class="x_content">
							<div class="col-md-12 col-sm-12  profile_left shadow p-3 mb-5">
								<form id="demo-form2" data-parsley-validate
									class="form-horizontal form-label-left">

									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"><strong><i
												class="fa fa-user"></i> Account Information</strong></label>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align">Email</label>
										<div class="col-md-8 col-sm-8 ">
											<input class="form-control" type="text"
												value="<%=resultset.getString("email_id")%>" readonly>
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align">User Name</label>
										<div class="col-md-8 col-sm-8 ">
											<input class="form-control" type="text"
												value="<%=resultset.getString("uname")%>" readonly>
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align">Password</label>
										<div class="col-md-8 col-sm-8 ">
											<input class="form-control" type="password"
												value="<%=resultset.getString("upass")%>">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align">Created At</label>
										<div class="col-md-8 col-sm-8 ">
											<input class="form-control" type="text"
												value="<%=resultset.getString("created_at")%>" readonly>
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align">Updated At</label>
										<div class="col-md-8 col-sm-8 ">
											<input class="form-control" type="text"
												value="<%=resultset.getString("updated_at")%>" readonly>
										</div>
									</div>
									<div class="ln_solid"></div>
								</form>
							</div>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>



<br><br>
       <jsp:include page="footer.jsp"></jsp:include>


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>