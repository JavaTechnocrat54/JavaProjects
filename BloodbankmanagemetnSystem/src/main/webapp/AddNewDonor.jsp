<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Add New Donor</title>
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
<%
				String msg = request.getParameter("msg");
				if("valid".equals(msg)){
				%>
				<center><font color="black" size="5"><p>Successfully Updated.</p></font></center>	
				<%
				}
				%>
				<%
				if("invalid".equals(msg)){
				%>
				<center><font color="black" size="5"><p>Invalid Input!!!Please Try Again.</p></font></center>	
				<%
				}
				%>

	
	<div class="container-fluid" style="margin-left : 60vh;">
		<div class="form-container">
			<form action="AddNewDonorAction.jsp" method="post">
				<div class="row row-space">
					<div class="mb-2">		
	<%
	int id = 1;
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select max(id) from donor");
		if (rs.next ()) {
			id = rs.getInt(1);
			id = id+1;
		}
	%>
	
	<%
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
					
						<h3>Donor id : <%out.println(id); %></h3>
						<input type="hidden" name="id" value="<% out.println(id); %>">
					</div>

				</div>
				<div class="row row-space">
					<div class="col-6">

						<div class="form-floating mb-1">
							<input type="text" class="form-control" id="floatingPassword"
								placeholder="name" name="name"> <label
								for="floatingPassword">Name</label>
						</div>
					</div>
					<div class="col-6">

						<div class="form-floating mb-1">
							<input type="text" class="form-control" id="floatingPassword"
								placeholder="father name" name="uname"> <label
								for="floatingPassword">User name</label>
						</div>
					</div>
				</div>


				<div class="row row-space">
					<div class="col-6">

						<div class="form-floating mb-1">
							<input type="password" class="form-control" id="floatingPassword"
								placeholder="mother name" name="pass"> <label
								for="floatingPassword">Password </label>
						</div>
					</div>

					<div class="col-6">
						<div class="form-floating mb-1">
							<input type="tel" class="form-control" id="floatingPassword"
								placeholder="mobile" name="mobile"> <label
								for="floatingPassword">Mobile Number</label>
						</div>
					</div>
				</div>

				<div class="row row-space">
					<div class="col-6">
						<div class="form-floating mb-1">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example" name="gender">
								<option selected>Select Gender</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Others">Others</option>
							</select> <label for="floatingSelect">Gender</label>
						</div>


					</div>
					<div class="col-6">
						<div class="form-floating mb-1">
							<input type="email" class="form-control" id="floatingInput"
								placeholder="name@example.com" name="email"> <label
								for="floatingInput">Email address</label>
						</div>

					</div>



				</div>



				<div class="form-floating mb-1">
					<select class="form-select" id="floatingSelect"
						aria-label="Floating label select example" name="bloodgroup">
						<option selected>Select the Blood Group</option>
						<option value="A+">A+</option>
						<option value="B+">B+</option>
						<option value="O+">O+</option>
						<option value="AB+">AB+</option>
						<option value="A-">A-</option>
						<option value="B-">B-</option>
						<option value="O-">O-</option>
						<option value="AB-">AB-</option>
					</select> <label for="floatingSelect">Blood Group</label>
				</div>
				<div class="form-floating mb-1">
					<input type="text" class="form-control" id="floatingPassword"
						placeholder="address" name="address"> <label
						for="floatingPassword">Address</label>
				</div>
				<div class="d-grid gap-2">
						<button class="btn btn-danger" type="submit">Register</button>
					</div>
				
				</form>
		</div>

	</div>










	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>
