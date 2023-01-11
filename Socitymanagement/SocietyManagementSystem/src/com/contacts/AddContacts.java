package com.contacts;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddContacts
 */
@WebServlet("/AddContacts")
public class AddContacts extends HttpServlet {
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=0;
		HttpSession hs=request.getSession();
		String fname=request.getParameter("fname");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String contact=request.getParameter("contact");
		try {
			int help=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblcontact(contact_id,name,email,mobile,message)values('"+id+"','"+fname+"','"+email+"','"+mobile+"','"+contact+"')");
			if(help>0) {
				String message="Thanks for contacting us! We will get in touch with you.";
				hs.setAttribute("message", message);
				response.sendRedirect("index.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
