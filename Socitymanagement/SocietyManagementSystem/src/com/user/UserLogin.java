package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import com.connection.DatabaseConnection;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession hs=request.getSession();
		String mobile = request.getParameter("mobile");
		String block = request.getParameter("block");
		String flatNo = request.getParameter("flatNo");
	
		try {
			ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblallotments where member_contact_no='" + mobile+ "' and block='" + block + "' and flat_no='" + flatNo + "'");
			if (resultset.next()) {
				hs.setAttribute("mobile", resultset.getString("member_contact_no"));
				hs.setAttribute("block", resultset.getString("block"));
				hs.setAttribute("flatNo", resultset.getString("flat_no"));
				hs.setAttribute("memberName", resultset.getString("member_name"));
				response.sendRedirect("user-dashboard.jsp");
			} else {
				String message="Invalid details";
				hs.setAttribute("invalid", message);
				response.sendRedirect("user-login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
