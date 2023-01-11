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
 * Servlet implementation class CustomerRegister
 */
@WebServlet("/CustomerRegister")
public class CustomerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int customerId=Integer.parseInt(request.getParameter("customerId"));
		String cname=request.getParameter("cname");
		String email=request.getParameter("email");
		
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String date=request.getParameter("date");
		
		String upass=request.getParameter("upass");
		HttpSession hs=request.getSession();
		try {
			int addCustomer=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblcustomer(id,name,pass,email,mobile,gender,dob,address) values('"+customerId+"','"+cname+"','"+upass+"','"+email+"','"+mobile+"','"+gender+"','"+date +"','"+address+"')");
			if(addCustomer>0) {
				String message="Customer account created successfully.";
				hs.setAttribute("customer-account", message);
				response.sendRedirect("customerRegister.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
