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
List<Booking> bookings = new ArrayList<>();
   if(user!= null) {
	   bookings = bookingDao.findByUserId(user.getId());
   }
   
   else {
	   bookings = bookingDao.findAll();
   }

%>

<div class="container-fluid mt-5">
        
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
      <th scope="col">Booking Date</th>
      <th scope="col">Travel Date</th>
      <th scope="col">Travel Time</th>
      <th scope="col">Total Passenger</th>
      <th scope="col">Total Price</th>
      
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
      for(Booking booking : bookings)
      {
    	  
    	  Transport t = null;
    	  Optional<Transport> oT = transportDao.findById(booking.getTransportId());
    	  if(oT.isPresent()) {
    		  t = oT.get();
    	  }
     	  
   %>
    <tr class="text-center">
    <td class="mid-align"><%=t.getName()%></td>
      <td class="mid-align"><%=t.getTransportMedium()%></td>
      <td class="mid-align"><%=t.getRegistrationNumber() %></td>
      <td class="mid-align"><%=t.getSourceLocation() %></td>
      <td class="mid-align"><%=t.getDestinationLocation()%></td>
      <td class="mid-align"><%=t.getPrice()%></td>
      <td class="mid-align"><%=booking.getBookingDate()%></td>
      <td class="mid-align"><%=booking.getTravelDate()%></td>
      <td class="mid-align"><%=booking.getTravelTime()%></td>
      <td class="mid-align"><%=booking.getTotalPerson()%></td>
      <td class="mid-align"><%=t.getPrice() * booking.getTotalPerson()%></td>
      
      <%
        if(user != null) {
      %>
      <td class="mid-align"><a href="cancelBooking?bookingId=<%=booking.getId()%>"><button type="button"
                  class="btn custom-bg text-color">Cancel Booking</button></a>
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