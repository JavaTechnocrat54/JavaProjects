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
 * Servlet implementation class AdminRemoveCustomers
 */
@WebServlet("/AdminRemoveCustomers")
public class AdminRemoveCustomers extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int carId = Integer.parseInt(request.getParameter("custId"));
		HttpSession hs=request.getSession();
		int removeCustomer = DatabaseConnection.insertUpdateFromSqlQuery("delete from tblcustomer where cid='" + carId + "'");
		if (removeCustomer > 0) {
			String message="Customer deleted";
			hs.setAttribute("customer", message);
			response.sendRedirect("admin-view-customer.jsp");
		} else {
			response.sendRedirect("admin-view-customer.jsp");
		}
	}

}
