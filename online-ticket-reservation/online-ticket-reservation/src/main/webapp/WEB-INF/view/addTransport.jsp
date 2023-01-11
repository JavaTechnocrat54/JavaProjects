<%@page import="com.ticketreservation.utility.Constants.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Transport - Ticket Reservation</title>
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
                    <h3 class="text-center my-3">Add Transport here..!!</h3>
            <form action="addTransport" method="post">
                 <div class="form-group">
                     <label for="name">Transport Name</label>
                     <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" placeholder="Enter firstname" required>
                 </div>
                 
                 <div class="form-group">
                     <label for="inputPassword2" class="text-color">Transport Medium</label>
                          <select name="transportMedium" class="form-control">
                       <option value="0">Transport Medium</option>
                      <%
                           
                           for(Constants.Transport transport : Constants.Transport.values())
                           {
                       %>
                             <option value="<%=transport.value()%>"><%=transport.value() %></option>
                       <%
                           }
                       %>
                   </select></div>
                 
                 <div class="form-group">
                     <label for="password">Registration Number</label>
                     <input type="text" class="form-control" id="password" aria-describedby="emailHelp" name="registrationNumber" placeholder="Enter registration no." required>
                 </div>
                 
                 <div class="form-group">
                     <label for="password">Price (per person)</label>
                     <input type="number" class="form-control" id="password" aria-describedby="emailHelp" name="price" placeholder="Enter price" required>
                 </div>
                 
                 <div class="form-group">
                     <label for="phone">Source Location</label>
                     <input type="text" class="form-control" id="phone" aria-describedby="emailHelp" name="sourceLocation" placeholder="Enter source location" required>
                 </div>
                 
                 <div class="form-group">
                     <label for="phone">Destination Location</label>
                     <input type="text" class="form-control" id="phone" aria-describedby="emailHelp" name="destinationLocation" placeholder="Enter destination location" required>
                 </div>
                 
                 <div class="container text-center">
                      <button class="btn text-white custom-bg">Add Transport</button>
                 </div>
                 
            </form>
                </div>
            </div>
           
            
       </div>
  </div>
</div>
</body>
</html>