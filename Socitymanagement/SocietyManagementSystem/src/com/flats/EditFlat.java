package com.flats;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EditFlat
 */
@WebServlet("/EditFlat")
public class EditFlat extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int flatNo = Integer.parseInt(request.getParameter("flatNo"));
		String floor=request.getParameter("floor");
		String block=request.getParameter("block");
		String ftype=request.getParameter("ftype");
		double mcharge=Double.parseDouble(request.getParameter("mcharge"));
		HttpSession hs=request.getSession();
		
		try {
			int editFlat=DatabaseConnection.insertUpdateFromSqlQuery("update tblflats set floor='"+floor+"',block='"+block+"',flat_type='"+ftype+"',maintainence_charge='"+mcharge+"' where flat_no='"+flatNo+"'");
			if(editFlat>0) {
				String message="Flat info edited.";
				hs.setAttribute("success", message);
				response.sendRedirect("admin-manage-flats.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
