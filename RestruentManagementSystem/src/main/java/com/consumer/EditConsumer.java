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
 * Servlet implementation class EditConsumer
 */
@WebServlet("/EditConsumer")
public class EditConsumer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String Password=request.getParameter("Password");
		String phone=request.getParameter("phone");
		String gender=request.getParameter("gender");
		HttpSession hs=request.getSession();
		int uid=(int)hs.getAttribute("id");
		
		int addUser=	DatabaseConnection.insertUpdateFromSqlQuery("update tbluser set name='"+name+"',email='"+email+"',password='"+Password+"',phone='"+phone+"',gender='"+gender+"' where  id='"+uid+"'");
		if(addUser>0) {
			String message="Your Profile Updated";
			hs.setAttribute("user-reg", message);
			response.sendRedirect("viewProfile.jsp");
		
		}else {
			String message="Error";
			hs.setAttribute("user-reg", message);
			response.sendRedirect("viewProfile.jsp");
		}
	}

}
