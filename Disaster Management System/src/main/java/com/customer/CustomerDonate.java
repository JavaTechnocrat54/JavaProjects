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

		int customerId = Integer.parseInt(request.getParameter("cid"));
		String cname = request.getParameter("cname");
		String amount=request.getParameter("amount");
		HttpSession hs = request.getSession();

		try {
			int addCustomer = DatabaseConnection.insertUpdateFromSqlQuery(
					"insert into tbldonate(id,cname,amount)value('"+customerId+"','"+cname+"','"+amount+"')");
			if (addCustomer > 0) {
				String message = "Donate SuccessFully.";
				hs.setAttribute("success", message);
				response.sendRedirect("CustomerViewDonation.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
