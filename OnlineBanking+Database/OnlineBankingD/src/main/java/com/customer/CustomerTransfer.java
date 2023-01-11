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
 * Servlet implementation class CustomerTransfer
 */
@WebServlet("/CustomerTransfer")
public class CustomerTransfer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		long accountno = Long.parseLong(request.getParameter("accno"));
		double amount = Double.parseDouble(request.getParameter("amount"));
		HttpSession hs = request.getSession();
		String accounts = (String) hs.getAttribute("accountno");
		long account = Long.parseLong(accounts);
		try {
			Connection cn = DatabaseConnection.getConnection();
			PreparedStatement ps = cn
					.prepareStatement("select balance from tblcustomer where accountno='" + accountno + "'");

			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
		
			
			
			
			 ps = cn
					.prepareStatement("select balance from tblcustomer where accountno='" + account + "'");

			 rs = ps.executeQuery();
			rs.next();
			double balance = rs.getDouble(1);

			if (amount <= balance) {
				ps = cn.prepareStatement("update tblcustomer set balance=(?) where accountno=(?) ");
				double bal = (balance - amount);
				ps.setDouble(1, bal);
				ps.setLong(2, account);
				ps.executeUpdate();

				ps = cn.prepareStatement("update tblcustomer set balance=(balance+?) where accountno=(?)");
				ps.setDouble(1, amount);
				ps.setLong(2, accountno);
				ps.executeUpdate();
				ps=cn.prepareStatement("insert into Transaction_History values(?,?,?,?,?,?)");
				Date dd=Calendar.getInstance().getTime();
				DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				ps.setLong(1, account);
				ps.setString(2, df.format(dd));
				ps.setString(3,("U Transfer This"+ Long.toString(accountno)));
				ps.setDouble(4, amount);
				ps.setDouble(5, (double)0.0);
				ps.setDouble(6, bal);
				ps.executeUpdate();
				String remain=Double.toString(bal);
				hs.setAttribute("success",remain);
				response.sendRedirect("Transfer.jsp");
			}else {
				hs.setAttribute("insufficient","faliled");
				response.sendRedirect("Transfer.jsp");
			}
			}else {
				hs.setAttribute("invalid", "invalideAccountNo");
				response.sendRedirect("Transfer.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
