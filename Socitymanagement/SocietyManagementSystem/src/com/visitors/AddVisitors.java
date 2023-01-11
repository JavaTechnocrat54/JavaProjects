package com.visitors;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddVisitors
 */
@WebServlet("/AddVisitors")
public class AddVisitors extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		int vid = Integer.parseInt(request.getParameter("vid"));
		String fullName = request.getParameter("fullName");
		String mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		String block = (String) session.getAttribute("block");
		String flatNo = request.getParameter("flatNo");
		String whomeToMeet=request.getParameter("whomeToMeet");
		String reasonToMeet = request.getParameter("reasonToMeet");

		try {
			int addVisitor = DatabaseConnection.insertUpdateFromSqlQuery(
					"insert into tblvisitors(visitor_id,visitor_name,visitor_mobile,visitor_address,block,flat_no,whome_to_meet,reason_to_meet)values('"
							+ vid + "','" + fullName + "','" + mobile + "','" + address + "','" + block + "','" + flatNo
							+ "','"+whomeToMeet+"','" + reasonToMeet + "')");
			if (addVisitor > 0) {
				String message="Visitor added successfully.";
				session.setAttribute("success", message);
				response.sendRedirect("admin-add-visitors.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
