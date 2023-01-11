package com.consumer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EventBooking
 */
@WebServlet("/EventBooking")
public class EventBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		String people=request.getParameter("people");
		String message=request.getParameter("message");
		HttpSession hs=request.getSession();
		int uid=(int)hs.getAttribute("id");
		String status="pending";
		System.out.println(name+email+people+phone+date+time+message+uid);
		int addUser=	DatabaseConnection.insertUpdateFromSqlQuery("insert into tblevent(cid,name,email,phone,date,time,people,message,status)value('"+uid+"','"+name+"','"+email+"','"+phone+"','"+date+"','"+time+"','"+people+"','"+message+"','"+status+"')");
		if(addUser>0) {
			String message1="Your Booking is pending Wait For the Admin Conformation";
			hs.setAttribute("user-msg", message1);
			response.sendRedirect("CIndex.jsp");
		
		}else {
			String message1="Booking failed";
			hs.setAttribute("user-msg", message1);
			response.sendRedirect("CIndex.jsp");
		}
		
	}

}
