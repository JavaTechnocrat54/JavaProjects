<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Vehicles - </title>
<%@ include file="components/common_cs_js.jsp"%>
</head>
<body>
<%@ include file="components/navbar.jsp"%>

<%
 List<Transport> transports = (List<Transport>)request.getAttribute("transports");
%>

<div class="container-fluid mt-5">
  
  <div class="row mt-4">
       <form class="form-inline ml-5" action="searchByTranportMedium">
          <div class="form-group">
            <label for="inputPassword2" class="text-color"><h4>Search Transport</h4></label>
            <select name="transportMedium" class="form-control">
                       <option value="0">Select Transport  Medium</option>
                      <%
                           
                           for(Constants.Transport transport : Constants.Transport.values())
                           {
                       %>
                             <option value="<%=transport.value()%>"><%=transport.value() %></option>
                       <%
                           }
                       %>
                   </select>
          </div>
          <button type="submit" class="btn text-color custom-bg ml-2">Search</button>
       </form>
    
  </div>
 
        
        <div class="table-responsive">
          <table class="table">
  <thead class="custom-bg text-white">
    <tr>
    <th scope="col">Transport Name</th>
      <th scope="col">Transport Medium</th>    
      <th scope="col">Registration Number</th>
      <th scope="col">Source Location</th>
      <th scope="col">Destination Location</th>
      <th scope="col">Price (per person)</th>
      <%
        if(user != null) {
      %>
      <th scope="col">Action</th>
      <%
        }
      %>
    </tr>
  </thead>
  
 
  
  <tbody>
  
   <%
      for(Transport transport : transports)
      {
    	  
    	  
   %>
    <tr class="text-center">
    <td class="mid-align"><%=transport.getName()%></td>
      <td class="mid-align"><%=transport.getTransportMedium()%></td>
      <td class="mid-align"><%=transport.getRegistrationNumber() %></td>
      <td class="mid-align"><%=transport.getSourceLocation() %></td>
      <td class="mid-align"><%=transport.getDestinationLocation()%></td>
      <td class="mid-align"><%=transport.getPrice()%></td>
      
      <%
        if(user != null) {
      %>
      <td class="mid-align"><a href="bookingPage?transportId=<%=transport.getId()%>"><button type="button"
                  class="btn custom-bg text-color">Book</button></a>
              </td>
       <%
        }
       %>
          
    </tr>
    <%
      }
   
      
    %>
  </tbody>
 
  
</table>
  
</div>
</div>
</body>
</html>