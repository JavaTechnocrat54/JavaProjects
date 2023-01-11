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
 * Servlet implementation class AddConsumer
 */
@WebServlet("/AddConsumer")
public class AddConsumer extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String Password=request.getParameter("Password");
		String phone=request.getParameter("phone");
		String gender=request.getParameter("gender");
		String pincode=request.getParameter("pincode");
		String Address=request.getParameter("Address");
		HttpSession hs=request.getSession();
		int addUser=	DatabaseConnection.insertUpdateFromSqlQuery("insert into tbluser(id,name,email,password,phone,gender,pincode,address)value('"+id+"','"+name+"','"+email+"','"+Password+"','"+phone+"','"+gender+"','"+pincode+"','"+Address+"')");
		if(addUser>0) {
			String message="you are successfully registered click here to login";
			hs.setAttribute("user-reg", message);
			response.sendRedirect("Regstation.jsp");
		
		}else {
			String message="Error";
			hs.setAttribute("user-reg", message);
			response.sendRedirect("Regstation.jsp");
		}
	}
	}


