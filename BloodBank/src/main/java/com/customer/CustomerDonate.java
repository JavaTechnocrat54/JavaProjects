package com.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class CustomerDonate
 */
@WebServlet("/CustomerDonate")
public class CustomerDonate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int reqid = Integer.parseInt(request.getParameter("reqid"));
		int custid = Integer.parseInt(request.getParameter("custid"));
		String name = request.getParameter("uname");
		String group = request.getParameter("bloodg");
		String msg = request.getParameter("hospital");
		int quantity = Integer.parseInt(request.getParameter("quan"));
		HttpSession hs=request.getSession();
		int req = DatabaseConnection.insertUpdateFromSqlQuery(
				"insert into tbldoner(did,uname,userid,bloodg,quantity,hospital,status)value('" + reqid + "','" + name
						+ "','" + custid + "','" + group + "','" + quantity + "','" + msg + "','Pending')");
		if(req>0) {
			hs.setAttribute("success", "success");
			response.sendRedirect("customer-donate.jsp");
		}else {
			hs.setAttribute("failed", "failed");
			response.sendRedirect("customer-donate.jsp");
		}

	}
}
