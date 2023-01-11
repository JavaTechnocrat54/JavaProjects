<%@ page import="com.ticketreservation.model.*"%>
<%@ page import="com.ticketreservation.dao.*"%>
<%@ page import="com.ticketreservation.utility.*"%>
<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>


<%

User user=(User)session.getAttribute("active-user");

Admin admin = (Admin)session.getAttribute("active-admin");

ApplicationContext context =  WebApplicationContextUtils.getWebApplicationContext(getServletContext());
UserDao userDao = context.getBean(UserDao.class);
AdminDao vehicleService = context.getBean(AdminDao.class);
BookingDao bookingDao = context.getBean(BookingDao.class);
TransportDao transportDao = context.getBean(TransportDao.class);
      
%>

<nav class="navbar navbar-expand-lg navbar-dark custom-bg">

	<div class="container-fluid">
		<a
			class="navbar-brand" href="/"><h3 class="text-color">
				<i>Online Ticket Reservation System</i>
			</h3></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">


				<%
        	 if(admin != null)
        	 {
    %>
				<li class="nav-item active"><a class="nav-link"
					href="addtransport"><b class="text-color">Add Transport</b> <span
						class="sr-only">(current)</span></a></li>

				
				<li class="nav-item active"><a class="nav-link" href="alltransport"><b
						class="text-color">View All Transport</b> <span class="sr-only">(current)</span></a>
				</li>
				
				<li class="nav-item active"><a class="nav-link" href="bookings"><b
						class="text-color">View All Bookings</b> <span class="sr-only">(current)</span></a>
				</li>

				<%
        	 }
    %>
    
    <%
        	 if(user != null)
        	 {
    %>

				<li class="nav-item active"><a class="nav-link" href="alltransport"><b
						class="text-color">View All Transport</b> <span class="sr-only">(current)</span></a>
				</li>
				
				<li class="nav-item active"><a class="nav-link" href="bookings"><b
						class="text-color">View My Booking</b> <span class="sr-only">(current)</span></a>
				</li>

				<%
        	 }
    %>
    

				<li class="nav-item active text-color ml-2" data-toggle="modal"
					data-target=".aboutusmodal">
					<div class="nav-link">
						<b class="text-color">About us</b>
					</div>
				</li>

				<li class="nav-item active text-color ml-2" data-toggle="modal"
					data-target=".contactusmodal">
					<div class="nav-link">
						<b class="text-color">Contact us</b>
					</div>
				</li>

			</ul>


			<%
           if(user == null && admin == null) {
        %>
			<ul class="navbar-nav ml-auto text-color">

				<li class="nav-item active text-color"><a class="nav-link"
					href="userregister"><b class="text-color">Register</b></a></li>

				<li class="nav-item text-color active"><a class="nav-link"
					href="userlogin"><b class="text-color">Login</b></a></li>
					
			</ul>
			<%
             
           }     
             
    %>
    
      <%
           if(user != null || admin != null) {
        %>
			<ul class="navbar-nav ml-auto text-color">			
					<li class="nav-item active text-color" data-toggle="modal" data-target=".logout-modal">
               <a class="nav-link" href="#" ><b>Logout</b></a>
             </li>
			</ul>
			<%
             
           }     
             
    %>
			
		</div>
	</div>
</nav>


<!-- Logout modal -->

<div class="modal fade logout-modal" tabindex="-1" role="dialog"
	aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header custom-bg text-white text-center">
				<h5 class="modal-title" id="exampleModalLongTitle">Log Out</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body text-center">
				<h5>Do you want to logout?</h5>

				<div class="text-center">
					<a href="logout"><button type="button"
							class="btn custom-bg text-white">Yes</button></a>
					<button type="button" class="btn btn-secondary ml-5"
						data-dismiss="modal">No</button>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- *********** -->

<!-- About us modal -->

<div class="modal fade aboutusmodal" tabindex="-1" role="dialog"
	aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header custom-bg text-white text-center">
				<h5 class="modal-title" id="exampleModalLongTitle">About Us</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container">
					<p style="font-size: 20px;">
						<b> A courier is a transport company that transports or sends commercial goods,
						 documents or packages from one destination to another.
						  These services make transportation of things easier and convenient to a lot of people and companies.
						   Here is courier company profile sample that details the company’s history, the services they offer,
						    and other specialized services that the company handles. No page of this sample is ever boring and
						     you can surely get ideas from their style and incorporate it to your own. </b>
					</p>
				</div>
			</div>
			<div class="modal-footer">
				<div class="text-center">
					<button type="button" class="btn custom-bg text-white"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ********** -->

<!-- Contact us modal -->

<div class="modal fade contactusmodal" tabindex="-1" role="dialog"
	aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header custom-bg text-white text-center">
				<h5 class="modal-title" id="exampleModalLongTitle">Contact Us</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container text-center">
					<p style="font-size: 23px;">
						<b> <img src="resources/images/phone.png" style="width: 27px;"
							alt="img">+91 XXXXXXXXXX / +91 XXXXXXXXXX<br> <img
							src="resources/images/mail.png" style="width: 29px;" alt="img">xxxxxxx@gmail.com
						</b>
					</p>
				</div>
			</div>
			<div class="modal-footer">
				<div class="text-center">
					<button type="button" class="btn custom-bg text-white"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ********** -->