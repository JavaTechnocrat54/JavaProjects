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
 * Servlet implementation class AdminRemoveEmployee
 */
@WebServlet("/AdminRemoveEmployee")
public class AdminRemoveEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int employeeId = Integer.parseInt(request.getParameter("employeeId"));
		HttpSession hs=request.getSession();
		int removeCustomer = DatabaseConnection.insertUpdateFromSqlQuery("delete from tblemployee where eid='" + employeeId + "'");
		if (removeCustomer > 0) {
			String message="employee deleted";
			hs.setAttribute("employee", message);
			response.sendRedirect("admin-view-employ.jsp");
		} else {
			response.sendRedirect("admin-view-employ.jsp");
		}
	}
}
