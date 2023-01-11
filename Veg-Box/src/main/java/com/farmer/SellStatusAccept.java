package com.farmer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class SellStatusAccept
 */
@WebServlet("/SellStatusAccept")
public class SellStatusAccept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello");
	
		System.out.println("Hello"+request.getParameter("account"));
		
		try {
			ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblsell where sellid='" + request.getParameter("accountno") + "'");
			rs.next();
			 int quantity=rs.getInt("quantity");
			 String type=rs.getString("type");
			int statusMode = 0;
		 int i=DatabaseConnection.insertUpdateFromSqlQuery("update tblsell set status='accept' where sellid='" + request.getParameter("accountno") + "'");
			Connection cn=DatabaseConnection.getConnection();
				if(i>0) {	
			 PreparedStatement ps=cn.prepareStatement("update tblproduct set medicine_quantity=(medicine_quantity+?) where medicine_name=(?)");
			 ps.setInt(1,quantity);
			 ps.setString(2, type);
			statusMode= ps.executeUpdate();
				}
					
					
			
			if (statusMode > 0) {
				response.sendRedirect("admin-viewfarmer-sell.jsp");
			} else {
				response.sendRedirect("in-viewfarmer-sell.jsp");
			}
	
	
	} catch (Exception e) {
		e.printStackTrace();
	}
	}

}
