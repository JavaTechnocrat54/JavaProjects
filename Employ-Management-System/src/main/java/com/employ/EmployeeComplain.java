package com.employ;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EmployeeComplain
 */
@WebServlet("/EmployeeComplain")
public class EmployeeComplain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int EventsId=Integer.parseInt(request.getParameter("cId"));
		
		String cname=request.getParameter("cname");
		String subject=request.getParameter("subject");
		
		String complain=request.getParameter("complain");
		
		
		HttpSession hs=request.getSession();
		try {
			int addEvent=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblcomplain (`cid`, `ename`, `subject`, `complain`) values('"+EventsId+"','"+cname+"','"+subject+"','"+complain+"')");
			if(addEvent>0) {
				String message="Event added successfully.";
				hs.setAttribute("Complain", message);
				response.sendRedirect("employee-complain.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
