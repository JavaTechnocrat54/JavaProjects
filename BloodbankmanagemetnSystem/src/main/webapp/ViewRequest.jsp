<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
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
	<div class="table-response">
<table class="table table-danger table-sm align-middle">
  <thead>
    <tr>
      
      <th scope="col">Name</th>
      <th scope="col">Mobile</th>
      <th scope="col">Email</th>
      <th scope="col">Bloodgroup</th>
     
      
    </tr>
  </thead>
  <tbody>
    <tr>
    <%
    try{
    	Connection con = ConnectionProvider.getCon();
    	Statement st = con.createStatement();
    	ResultSet rs = st.executeQuery("select * from bloodrequest");
    	while(rs.next()){
    %>	
    <td><%=rs.getString(1) %></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    </tr>
    <%	
    	}
    }catch(Exception e)
    {
    	System.out.println(e);
    }
    %>
    
    
  </tbody>
</table>

</div>

</body>
</html>