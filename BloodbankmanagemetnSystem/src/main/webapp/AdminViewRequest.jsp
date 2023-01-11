<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="Project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<style type="text/css">
.con{
margin-top: 4rem;
}

</style>
<title>Blood Requests</title>
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
	<div class="con">
<!-- table -->
<div class="table-response">
<table class="table table-danger table-sm align-middle">
  <thead>
    <tr>
      
      <th scope="col">Name</th>
      <th scope="col">Mobile</th>
      <th scope="col">Email</th>
      <th scope="col">Bloodgroup</th>
      <th scope="col">Done</th>
      <th scope="col">Delete</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
    <%
    try{
    	Connection con = ConnectionProvider.getCon();
    	Statement st = con.createStatement();
    	ResultSet rs = st.executeQuery("select * from bloodrequest where status='pending'");
    	while(rs.next()){
    %>	
    <td><%=rs.getString(1) %></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    <td><a class="btn btn-primary" href="RequestBloodDone.jsp?mobilenumber=<%=rs.getString(2)  %>" role="button">Done</a></td>
    <td><a class="btn btn-danger" href="RequestBloodDelete.jsp?mobilenumber=<%= rs.getString(2) %>" role="button">Delete</a></td>
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
</div>
</body>
</html>
<%@include file="footer.html"%>