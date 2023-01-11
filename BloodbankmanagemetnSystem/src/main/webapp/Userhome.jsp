<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

</head>
<body>
<header>
<%
String name=(String) session.getAttribute("name");

%>
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
						<li class="nav-item"><a class="nav-link" href="RequestForBlood.jsp">RequestForBlood</a>
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
	
	
	 <div class="container h-100">

        <div class="row h-100 align-items-center">

          <div class="col-md-12 text-center">
          <i class='fas fa-user-alt' style='font-size: 100px; color: black'></i><br>

            <h1>Welcome <%=name %></h1>

            <p>Here you can RequestForBlood/ViewRequest
              </p>

          </div>




        </div>




      </div>
	
	
	<%@include file="footer.html"%>
	
</body>
</html>