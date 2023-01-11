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
 * Servlet implementation class CustomerReg
 */
@WebServlet("/CustomerReg")
public class CustomerReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int customerId = Integer.parseInt(request.getParameter("customerId"));
		String cname = request.getParameter("cname");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String bloodg = request.getParameter("bloodg");

		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		HttpSession hs = request.getSession();

		try {
			int addCustomer = DatabaseConnection.insertUpdateFromSqlQuery(
					"insert into tblcustomer(id,cname,email,mobile,gender,dob,address,bloodg,uname,upass) values('"
							+ customerId + "','" + cname + "','" + email + "','" + mobile + "','" + gender + "','"
							+ dob+ "','" + address + "','" + bloodg + "','" + uname + "','" + upass
							+ "')");
			if (addCustomer > 0) {
				String message = "Customer account create successfully.";
				hs.setAttribute("success", message);
				response.sendRedirect("Registation.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
