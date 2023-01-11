package com.complaint;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class ComplaintAction
 */
@WebServlet("/ComplaintAction")
public class ComplaintAction extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int compId=Integer.parseInt(request.getParameter("compId"));
		String adminRemark=request.getParameter("remark");
		String statusAction=request.getParameter("statusAction");
		
		try {
			int complaintAction=DatabaseConnection.insertUpdateFromSqlQuery("update tblcomplaints set admin_remark='"+adminRemark+"',complaint_status='"+statusAction+"' where complaint_id='"+compId+"'");
			if(complaintAction>0) {
				response.sendRedirect("admin-view-complaints.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
