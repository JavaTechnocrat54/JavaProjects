package com.customer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class CustomerDeposite
 */
@WebServlet("/CustomerDeposite")
public class CustomerDeposite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		long accountno = Long.parseLong(request.getParameter("accno"));
		double deposit = Double.parseDouble(request.getParameter("amount"));
		HttpSession hs = request.getSession();
		String accounts = (String) hs.getAttribute("accountno");
		long account = Long.parseLong(accounts);
		try {
			Connection cn = DatabaseConnection.getConnection();
			PreparedStatement ps = cn
					.prepareStatement("select balance from tblcustomer where accountno='" + accountno + "'");

			ResultSet rs = ps.executeQuery();
			rs.next();
				double balance = rs.getDouble(1);

				ps = cn.prepareStatement("update tblcustomer set balance=(balance+?) where accountno=(?)");

				ps.setDouble(1, deposit);
				ps.setLong(2, accountno);
				int i = ps.executeUpdate();
				if (i == 1) {
				double total=	balance + deposit;
				String totals=Double.toString(total);
					ps = cn.prepareStatement("insert into Transaction_History values(?,?,?,?,?,?)");
					Date dd = Calendar.getInstance().getTime();
					DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
					ps.setLong(1,accountno);
					ps.setString(2, df.format(dd));
					ps.setString(3, "BY CASH Deposited");
					ps.setDouble(4, (double) 0.0);
					ps.setDouble(5, deposit);
					ps.setDouble(6, total);
					ps.executeUpdate();
					hs.setAttribute("success",totals);
					response.sendRedirect("Deposite.jsp");
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
