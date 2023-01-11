package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AdminRemoveCar
 */
@WebServlet("/AdminRemoveCar")
public class AdminRemoveCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int customerId = Integer.parseInt(request.getParameter("custId"));
		HttpSession hs=request.getSession();
		int removeCustomer = DatabaseConnection.insertUpdateFromSqlQuery("delete from tblcustomer where id='" + customerId + "'");
		if (removeCustomer > 0) {
			String message="Car deleted";
			hs.setAttribute("Car-deleted", message);
			response.sendRedirect("admin-view-car.jsp");
		} else {
			response.sendRedirect("admin-view-car.jsp");
		}
	}
}
