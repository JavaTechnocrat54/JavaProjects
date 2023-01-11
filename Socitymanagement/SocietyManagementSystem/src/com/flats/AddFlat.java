package com.flats;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

import java.util.*;
/**
 * Servlet implementation class AddFlat
 */
@WebServlet("/AddFlat")
public class AddFlat extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int flatNo=Integer.parseInt(request.getParameter("flatNo"));
		String floor=request.getParameter("floor");
		String block=request.getParameter("block");
		String ftype=request.getParameter("ftype");
		int mcharge=Integer.parseInt(request.getParameter("mcharge"));
		HttpSession hs=request.getSession();
		try {
			int addFlat=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblflats(flat_no,floor,block,flat_type,maintainence_charge)values('"+flatNo+"','"+floor+"','"+block+"','"+ftype+"','"+mcharge+"')");
			if(addFlat>0) {
				String message="Flat added sucessfully.";
				hs.setAttribute("add-flat", message);
				response.sendRedirect("add-flats.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
