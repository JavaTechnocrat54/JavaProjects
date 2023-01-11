package com.consumer;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class CustomerProductsBookingStatus
 */
@WebServlet("/CustomerProductsBookingStatus")
public class CustomerProductsBookingStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int statusMode = 0;
			ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select status from tblbooking where cid='" + request.getParameter("orderId") + "'");
			while (rs.next()) {
				if (rs.getString(1).equals("deliver")) {
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblbooking set status='pending' where cid='" + request.getParameter("orderId") + "'");
				} else {
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblbooking set status='deliver' where cid='" + request.getParameter("orderId") + "'");
				}
			}
			if (statusMode > 0) {
				response.sendRedirect("Adminviewtable.jsp");
			} else {
				response.sendRedirect("Adminviewtable.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
