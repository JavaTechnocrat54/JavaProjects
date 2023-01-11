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
 * Servlet implementation class AdminEditEmployee
 */
@WebServlet("/AdminEditEmployee")
public class AdminEditEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int employeeId = Integer.parseInt(request.getParameter("employeeId"));
		String cname = request.getParameter("cname");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String pincode = request.getParameter("pincode");
		String salary = request.getParameter("salary");
		String status = request.getParameter("status");
		HttpSession hs = request.getSession();

		if (employeeId != 0) {
			int updateMedicine = DatabaseConnection.insertUpdateFromSqlQuery(
					"update tblemployee set name='" + cname + "',email='" + email + "',mobile='" + mobile + "',gender='"
							+ gender + "',scalary='" + salary + "',job='" + job + "',address='" + address
							+ "',pincode='" + pincode + "',status='" + status + "' where eid='" + employeeId + "'");
			if (updateMedicine > 0) {
				String editmessage = "Medicine data updated";
				hs.setAttribute("success", editmessage);
				response.sendRedirect("admin-view-employ.jsp");
			}

		} else {
			System.out.println("There is a problem in updating medicine data.");
		}
	}
}
