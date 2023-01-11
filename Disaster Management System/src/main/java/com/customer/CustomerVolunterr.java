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
 * Servlet implementation class CustomerVolunterr
 */
@WebServlet("/CustomerVolunterr")
public class CustomerVolunterr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int customerId = Integer.parseInt(request.getParameter("cid"));
		String cname = request.getParameter("cname");
		String reason=request.getParameter("reason");
		String Status="Pending";
		HttpSession hs = request.getSession();

		try {
			int addCustomer = DatabaseConnection.insertUpdateFromSqlQuery(
					"insert into tblreq(id,cname,reason,status)value('"+customerId+"','"+cname+"','"+reason+"','"+Status+"')");
			if (addCustomer > 0) {
				String message = "Donate SuccessFully.";
				hs.setAttribute("success", message);
				response.sendRedirect("RequestForVol.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
