<%@page import="com.ticketreservation.utility.Constants.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book - Ticket Reservation</title>
<%@ include file="components/common_cs_js.jsp"%>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>

	<%
	com.ticketreservation.model.Transport transport = (com.ticketreservation.model.Transport) request
			.getAttribute("transport");
	%>

	<div class="container-fluid">
		<div class="row mt-2">
			<div class="col-md-4 offset-md-4 admin">
				<div class="card">
					<%@ include file="components/message.jsp"%>
					<div class="card-body px-5">
						<img src="resources/images/register.png"
							class="rounded mx-auto d-block" alt="img" height="90px"
							width="90px">
						<h3 class="text-center my-3">Transport Booking..!!</h3>
						<form action="book" method="post">

							<input type="hidden" name="transportId"
								value="<%=transport.getId()%>" /> <input type="hidden"
								name="userId" value="<%=user.getId()%>" />

							<div class="form-group">
								<label for="name">Name</label> <input type="text"
									class="form-control" id="name" aria-describedby="emailHelp"
									value="<%=transport.getName()%>" required readonly>
							</div>

							<div class="form-group">
								<label for="name">Transport Medium</label> <input type="text"
									class="form-control" id="name" aria-describedby="emailHelp"
									value="<%=transport.getTransportMedium()%>" required readonly>
							</div>

							<div class="form-group">
								<label for="password">Registration Number</label> <input
									type="email" class="form-control" id="password"
									aria-describedby="emailHelp"
									value="<%=transport.getRegistrationNumber()%>" required
									readonly>
							</div>

							<div class="form-group">
								<label for="name">Travel Date</label> <input type="date"
									class="form-control" id="name" aria-describedby="emailHelp"
									name="travelDate" required>
							</div>

							<div class="form-group">
								<label for="name">Total Passenger</label> <input type="number"
									class="form-control" id="name" aria-describedby="emailHelp"
									name="totalPerson" required>
							</div>

							<div class="form-group">
								<label for="inputPassword2" class="text-color">Select
									Timing</label> <select name="travelTime" class="form-control">
									<option value="0">Select Travel Time</option>
									<%
									for (Constants.BookingTiming timing : Constants.BookingTiming.values()) {
									%>
									<option value="<%=timing.value()%>"><%=timing.value()%></option>
									<%
									}
									%>
								</select>
							</div>

							<div class="container text-center">
								<button class="btn text-white custom-bg">Book</button>
							</div>

						</form>
					</div>
				</div>


			</div>
		</div>
	</div>
</body>
</html>