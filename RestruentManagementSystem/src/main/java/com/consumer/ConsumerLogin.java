package com.consumer;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class ConsumerLogin
 */
@WebServlet("/ConsumerLogin")
public class ConsumerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession hs = request.getSession();
		try {
			ResultSet resultset = null;
			resultset = DatabaseConnection.getResultFromSqlQuery(
					"select * from tbluser where email='" + email + "' and password='" + password + "'");
			if (email != null && password != null) {
				if (resultset.next()) {
					hs.setAttribute("id", resultset.getInt("id"));
					hs.setAttribute("name", resultset.getString("name"));
					response.sendRedirect("CIndex.jsp");
				} else {
					String message = "You have enter wrong credentials";
					hs.setAttribute("credential", message);
					response.sendRedirect("Login.html");
				}
			} else {
				System.out.println("User name or Password null");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
