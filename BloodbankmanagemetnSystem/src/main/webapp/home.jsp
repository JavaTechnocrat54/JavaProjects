<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<style>
.h-100{
min-height: 80vh;
}

</style>


<!-- Custom styles for this template -->
<link href="style.css" rel="stylesheet">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-danger">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">  <img src="img/logo.png" alt="" width="40" height="40" class="d-inline-block">E-BloodBank</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav me-auto mb-2 mb-md-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="home.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="AddNewDonor.jsp">Add New Donor</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="EditDeleteList.jsp">Edit/Delete & Donor List</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="ManageStock.jsp">Manage Stock</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="AdminViewRequest.jsp">Request For Blood</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="RequestCompleted.jsp">Request Completed</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a>
						</li>
					</ul>

				</div>
			</div>
		</nav>
	</header>

      <div class="container h-100">

        <div class="row h-100 align-items-center">

          <div class="col-md-12 text-center">
          <i class='fas fa-user-alt' style='font-size: 100px; color: black'></i><br>

            <h1>Welcome Admin</h1>

            <p>Here you can add new donor details, edit the donor/client details and manage the stocks
              </p>

          </div>




        </div>




      </div>




    </header>

</body>
</html>
<%@include file="footer.html"%>