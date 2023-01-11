package com.complaint;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class FillComplaint
 */
@WebServlet("/FillComplaint")
public class FillComplaint extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cid=0;
		String complaintType=request.getParameter("complaintType");
		String complaintDescription=request.getParameter("complaintDescription");
		String complaint_status="Pending";
		HttpSession hs=request.getSession();
		String member_name=(String) hs.getAttribute("memberName");

		try {
			int fillComplaints=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblcomplaints(complaint_id,complaint_type,complaint_description,complaint_status,member_name,block,flat_no)values('"+cid+"','"+complaintType+"','"+complaintDescription+"','"+complaint_status+"','"+member_name+"','"+hs.getAttribute("block")+"','"+hs.getAttribute("flatNo")+"')");
			if(fillComplaints>0) {
				String message="You have fill complaint successfully.";
				hs.setAttribute("complaint", message);
				response.sendRedirect("user-fill-complaint.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
