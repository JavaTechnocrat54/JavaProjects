package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EmployeeTask
 */
@WebServlet("/EmployeeTask")
public class EmployeeTask extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int TaskId=Integer.parseInt(request.getParameter("taskId"));
		int EmployeeName=Integer.parseInt(request.getParameter("EmployeeName"));
		String pname=request.getParameter("pname");
		
		
		String sdob=request.getParameter("sdob");
		String edob=request.getParameter("edob");
		
		HttpSession hs=request.getSession();
		try {
			int addEvent=DatabaseConnection.insertUpdateFromSqlQuery("insert into tbltask (`tid`, `employeeid`, `projectname`, `sdob`, `edob`, `status`) values('"+TaskId+"','"+EmployeeName+"','"+pname+"','"+sdob+"','"+edob+"','Pending')");
			if(addEvent>0) {
				String message="Event added successfully.";
				hs.setAttribute("Task", message);
				response.sendRedirect("admin-add-event.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
