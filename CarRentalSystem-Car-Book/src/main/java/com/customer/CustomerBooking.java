package com.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class BookingBooking
 */
@WebServlet("/CustomerBooking")
public class CustomerBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bookid=Integer.parseInt(request.getParameter("bookid"));
		int customerid=Integer.parseInt(request.getParameter("customerid"));
		String uname=request.getParameter("uname");
		String email=request.getParameter("email");
		
		int carid=Integer.parseInt(request.getParameter("car"));
		int Price=Integer.parseInt(request.getParameter("day"));
	
		
		
		HttpSession hs=request.getSession();
		try {
			int addBooking=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblbooking(bookid,custid,cname,email,carid,price,status) values('"+bookid+"','"+customerid+"','"+uname+"','"+email+"','"+carid+"','"+Price +"','Pending')");
			if(addBooking>0) {
				String message="Booking account created successfully.";
				hs.setAttribute("booking-account", message);
				response.sendRedirect("customer-view-booking.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
