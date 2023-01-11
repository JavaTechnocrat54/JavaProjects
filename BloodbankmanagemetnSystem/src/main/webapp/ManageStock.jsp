<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@page import="Project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="style.css">
<title>Manage Stock</title>
<style type="text/css">
.con{
margin-top: 7rem;

}

</style>

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
 <%
	String msg = request.getParameter("msg");
	if ("invalid".equals(msg)) {
	%>
	<center>
		<font color="black" size="5">Some thing went wrong! Try Again!</font>
	</center>
	<%
	}
	%>
 <%
	if ("valid".equals(msg)) {
	%>
	<center>
		<font color="black" size="5">Successfully Updated</font>
	</center>
	<%
	}
	%>
<center>	
 <div class="container">
  <div class="row">
    <div class="col-5">
    <br>
    	<form action="ManageStockAction.jsp" method="post"
					class="form-container">
					

					<div class="form-floating">
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
					<br>
					<div class="form-floating">
						<select class="form-select" id="floatingSelect"
							aria-label="Floating label select example" name="incdec">
							<option selected>Select an option</option>
							<option value="inc">Increase</option>
							<option value="dec">Decrease</option>
						</select> <label for="floatingSelect">Increase/Decrease</label>
					</div>
					<br>
					<div class="form-floating mb-3">
						<input type="number" class="form-control" id="floatingInput"
							placeholder="Enter your name" name="units" required="required"> <label for="floatingInput">Enter Units</label>
					</div>
					<br>
					<div class="d-grid gap-2">
						<button class="btn btn-danger" type="submit">Update</button>
					</div>
				

				</form>
    	
    
        </div>
    <div class="col">
    	<br><br>
      <table class="table table-danger">
  <thead>
    <tr>
      <th scope="col">Blood Group</th>
      <th scope="col">Units</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    <%
    try{
    	Connection con = ConnectionProvider.getCon();
    	Statement st = con.createStatement();
    	ResultSet rs = st.executeQuery("select * from stock");
    	while(rs.next()){
    %>	
    <td><%=rs.getString(1) %></td>
    <td><%=rs.getString(2) %></td>
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
  </div>
  </div>
 </center>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
</body>
</html>
<%@include file="footer.html"%>