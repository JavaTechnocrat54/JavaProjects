<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
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
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<style type="text/css">
</style>
<title>Admin Login</title>
</head>
<body>
<%
	String msg = request.getParameter("msg");
	if ("invalid".equals(msg)) {
	%>
	<center>
		<font color="black" size="5">Invalid Username or Password</font>
	</center>
	<%
	}
	%>
	<div class="login-page" style='height:70vh;'>
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<h3 class="mb-3">Login Now</h3>
					<div class="shadow rounded">
						<div class="row">
							<div class="col-md-7 pe-0">
								<div class="form-left h-100 py-5 px-5">
									<form action="AdminLoginAction.jsp" method="post"
										class="row g-4">
										<div class="col-12">
											<div class="form-floating">
												<input type="text" class="form-control" id="floatingInput"
													placeholder="admin" name="user" required="required">
												<label for="floatingInput">Username</label>
											</div>
										</div>

										<div class="col-12">
											<div class="form-floating">
												<input type="password" class="form-control"
													id="floatingPassword" placeholder="Password" name="pass"
													required="required"> <label for="floatingPassword">Password</label>
											</div>
										</div>

										<div class="d-grid gap-2 col-6 mx-auto">
											<button type="submit"
												class="btn btn-danger px-4 float-center mt-4">Login</button>
										</div>
									</form>
								</div>
							</div>
							<div class="col-md-5 ps-0 d-none d-md-block">
								<div class="form-right h-100 text-white text-center pt-5">
									<i class="bi bi-bootstrap"></i> 
									<i class='fas fa-user-alt'
										style='font-size: 100px; color: white'></i><br>
									<br>
									<h2 class="fs-1">Admin Login</h2>
								</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>













	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>
<%@include file="footer.html"%>