<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<title>Request Of Blood</title>
</head>
<body>
<%
String name=(String) session.getAttribute("name");

%>
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
							aria-current="page" href="Userhome.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#">RequestForBlood</a>
						</li>
						<li class="nav-item"><a class="nav-link active" ><%=name %></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="ViewRequest.jsp">ViewRequest</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="Logout.jsp">Logout</a>
						</li>
					</ul>

				</div>
			</div>
		</nav>
	</header>
	
	<section class="container-fluid">
		<section class="row justify-content-center">
			<section class="col-12 col-sm-7 col-md-3">
				<form action="RequestForBloodAction.jsp" method="post"
					class="form-container">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="floatingInput"
							placeholder="Enter your name" name="name" required="required"> <label for="floatingInput">Name</label>
					</div>
					<div class="form-floating mb-3">
						<input type="tel" class="form-control" id="floatingInput"
							placeholder="7504009453" name="mobile" required="required"> <label for="floatingInput">Mobile
							Number</label>
					</div>

					<div class="form-floating mb-3">
						<input type="email" class="form-control" id="floatingInput"
							placeholder="name@example.com" name="email" required="required"> <label
							for="floatingInput">Email address</label>
					</div>
					<div class="form-floating">
						<select class="form-select" id="floatingSelect"
							aria-label="Floating label select example" name="select">
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
					<br>
					<div class="d-grid gap-2">
						<button class="btn btn-danger" type="submit">Request For Blood</button>
					</div>
				

				</form>
				<%
				String msg = request.getParameter("msg");
				if("valid".equals(msg)){
				%>
				<center><font color="black" size="5"><p>Your Request is Successful.</p></font></center>	
				<%
				}
				%>
				<%
				if("invalid".equals(msg)){
				%>
				<center><font color="black" size="5"><p>Invalid Input!!!Please Try Again.</p></font></center>	
				<%
				}
				session.removeAttribute("msg");
				%>
				
				
				
			</section>
			
		</section>
	
	</section>
		
	
	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>
<%@include file="footer.html"%>