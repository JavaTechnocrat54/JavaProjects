package com.admin;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class Updatemedicine
 */
@WebServlet("/Updatemedicine")
public class Updatemedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Connection connection=null;
		PreparedStatement ps=null;
			int medicineId=Integer.parseInt(request.getParameter("id"));
			String medicineName =request.getParameter("name");
			String medicineType =request.getParameter("mType");
			String medicineDescription =request.getParameter("message");
			
			InputStream inputStream=null;
			try {
					connection =DatabaseConnection.getConnection();
					ps=connection.prepareStatement("update  tblmedicine set medicine_name='"+medicineName+"',medicine_type='"+medicineType+"',medicine_description='"+medicineDescription+"' where id='"+medicineId+"'");
					
					int i=ps.executeUpdate();
					if (i > 0) {
						String success = "Medicine added successfully.";
						session.setAttribute("message", success);
						response.sendRedirect("admin-view-medicine.jsp");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			
		
	}

}
