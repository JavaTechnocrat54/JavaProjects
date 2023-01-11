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
 * Servlet implementation class CustomerStatus
 */
@WebServlet("/CustomerStatus")
public class CustomerStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int statusMode = 0;
			ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select status from tblcustomer where accountno='" + request.getParameter("accountno") + "'");
			while (rs.next()) {
				if (rs.getString("status").equals("unblock")) {
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblcustomer set status='block' where accountno='" + request.getParameter("accountno") + "'");
				} else {
					statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblcustomer set status='unblock' where accountno='" + request.getParameter("accountno") + "'");
				}
			}
			if (statusMode > 0) {
				response.sendRedirect("admin-view-customers.jsp");
			} else {
				response.sendRedirect("admin-view-customers.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
