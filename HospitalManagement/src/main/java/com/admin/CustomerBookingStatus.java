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
 * Servlet implementation class CustomerBookingStatus
 */
@WebServlet("/CustomerBookingStatus")
public class CustomerBookingStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int statusMode = 0;
			ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select status from tblappointment where id='" + request.getParameter("orderId") + "'");
			while (rs.next()) {
				if (rs.getString(1).equals("Confirm")) {
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblappointment set status='Pending' where id='" + request.getParameter("orderId") + "'");
				} else {
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblappointment set status='Confirm' where id='" + request.getParameter("orderId") + "'");
				}
			}
			if (statusMode > 0) {
				response.sendRedirect("admin-manage-appoiment.jsp");
			} else {
				response.sendRedirect("admin-manage-appoiment.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
