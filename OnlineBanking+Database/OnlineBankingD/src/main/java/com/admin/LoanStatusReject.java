package com.admin;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class LoanStatusReject
 */
@WebServlet("/LoanStatusReject")
public class LoanStatusReject extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("accountno"));
		try {
			int statusMode = 0;
			ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select status from tblloan where accountno='" + request.getParameter("accountno") + "'");
			while (rs.next()) {
				
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update onlinebanking.tblloan set status='LoanRejected' where accountno='" + request.getParameter("accountno") + "'");
					 					
			}
			if (statusMode > 0) {
				response.sendRedirect("admin-view-loan.jsp");
			} else {
				response.sendRedirect("admin-view-loan1.jsp");
			}
	
	
	} catch (Exception e) {
		e.printStackTrace();
	}
	}
	}

	


