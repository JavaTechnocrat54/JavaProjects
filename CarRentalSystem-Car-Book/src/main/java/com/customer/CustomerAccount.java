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
 * Servlet implementation class CustomerAccount
 */
@WebServlet("/CustomerAccount")
public class CustomerAccount extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int customerId=Integer.parseInt(request.getParameter("customerId"));
		String cname=request.getParameter("cname");
		String email=request.getParameter("email");
		String occupation=request.getParameter("occupation");
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String date=request.getParameter("date");
		
		String upass=request.getParameter("upass");
		HttpSession hs=request.getSession();
		try {
			int addCustomer=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblcustomer(cid,email,gender,occupation,address,dob,fullname,pass,mobileno) values('"+customerId+"','"+email+"','"+gender+"','"+occupation+"','"+address+"','"+date +"','"+cname+"','"+upass+"','"+mobile+"')");
			if(addCustomer>0) {
				String message="Customer account created successfully.";
				hs.setAttribute("customer-account", message);
				response.sendRedirect("customer-account.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
