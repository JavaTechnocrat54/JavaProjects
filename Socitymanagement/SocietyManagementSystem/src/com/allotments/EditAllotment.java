package com.allotments;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EditAllotment
 */
@WebServlet("/EditAllotment")
public class EditAllotment extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int flatNo = Integer.parseInt(request.getParameter("flatNo"));
		String member_name=request.getParameter("fullName");
		String emergency_contact_no=request.getParameter("emergencyMobile");
		int totalFamilyMembers=Integer.parseInt(request.getParameter("totalFamilyMembers"));
		String address=request.getParameter("address");
		HttpSession hs=request.getSession();
		try {
			int editFlat=DatabaseConnection.insertUpdateFromSqlQuery("update tblallotments set member_name='"+member_name+"',emergency_contact_no='"+emergency_contact_no+"',total_family_members='"+totalFamilyMembers+"',permanent_address='"+address+"' where flat_no='"+flatNo+"'");
			if(editFlat>0) {
				String message="Allotment info edited.";
				hs.setAttribute("success", message);
				response.sendRedirect("admin-manage-allotments.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
