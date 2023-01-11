<%@page import="com.ticketreservation.utility.Constants.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Register- Ticket Reservation</title>
<%@ include file="components/common_cs_js.jsp"%>
</head>
<body>
  <%@ include file="components/navbar.jsp"%>
  
 <div class="container-fluid">
  <div class="row mt-2">
       <div class="col-md-4 offset-md-4 admin" >
            <div class="card">
                <%@ include file="components/message.jsp"%>
                <div class="card-body px-5">
                    <img src="resources/images/register.png" class="rounded mx-auto d-block" alt="img" height="90px" width="90px">
                    <h3 class="text-center my-3">Admin Register here..!!</h3>
            <form action="adminregister" method="post">
                 <div class="form-group">
                     <label for="name">First Name</label>
                     <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="firstName" placeholder="Enter firstname" required>
                 </div>
                 
                 <div class="form-group">
                     <label for="name">Last Name</label>
                     <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="lastName" placeholder="Enter lastname" required>
                 </div>
                 
                 <div class="form-group">
                     <label for="password">Email Id</label>
                     <input type="email" class="form-control" id="password" aria-describedby="emailHelp" name="emailId" placeholder="Enter email id" required>
                 </div>
                 
                 <div class="form-group">
                     <label for="password">Password</label>
                     <input type="password" class="form-control" id="password" aria-describedby="emailHelp" name="password" placeholder="Enter password" required>
                 </div>
                 
                 <div class="form-group">
                     <label for="phone">Mobile No.</label>
                     <input type="number" class="form-control" id="phone" aria-describedby="emailHelp" name="phoneNo" placeholder="Enter mobile no" required>
                 </div>
                 
                 <div class="form-group">
                     <label for="phone">Address</label>
                     <textarea style="height:90px" class="form-control" placeholder="Enter Address" name="address" required></textarea>
                 </div>
                 
                 <div class="container text-center">
                      <button class="btn text-white custom-bg">Register</button>
                 </div>
                 
            </form>
                </div>
            </div>
           
            
       </div>
  </div>
</div>
</body>
</html>