package com.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class LoanStatusAccept
 */
@WebServlet("/LoanStatusAccept")
public class LoanStatusAccept extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello");
	
		System.out.println("Hello"+request.getParameter("amount"));
		
		try {
			ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select amount from tblloan where accountno='" + request.getParameter("accountno") + "'");
			rs.next();
			 double amount=rs.getDouble("amount");
			int statusMode = 0;
			 rs = DatabaseConnection.getResultFromSqlQuery("select status from tblloan where accountno='" + request.getParameter("accountno") + "'");
			while (rs.next()) {
				
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update onlinebanking.tblloan set status='LoanAccept' where accountno='" + request.getParameter("accountno") + "'");
					 
					
					
			}
			if (statusMode > 0) {
				DatabaseConnection.insertUpdateFromSqlQuery("update onlinebanking.tblcustomer set balance=balance+'"+amount+"' where accountno='" + request.getParameter("accountno") + "'");
				response.sendRedirect("admin-view-loan.jsp");
			} else {
				response.sendRedirect("admin-view-loan.jsp");
			}
	
	
	} catch (Exception e) {
		e.printStackTrace();
	}
	}
	

}
