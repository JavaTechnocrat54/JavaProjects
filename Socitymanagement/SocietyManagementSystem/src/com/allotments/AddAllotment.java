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
 * Servlet implementation class AddAllotment
 */
@WebServlet("/AddAllotment")
public class AddAllotment extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=0;
		HttpSession session=request.getSession();
		String member_name=request.getParameter("fullName");
		String member_contact_no=request.getParameter("mobile");
		String block = (String) session.getAttribute("block");
		int flatNo=Integer.parseInt(request.getParameter("flatNo"));
		String emergency_contact_no=request.getParameter("emergencyMobile");
		int totalFamilyMembers=Integer.parseInt(request.getParameter("totalFamilyMembers"));
		String address=request.getParameter("address");
		
		try {
			int addAllotment=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblallotments(allotment_id,member_name,member_contact_no,block,flat_no,emergency_contact_no,total_family_members,permanent_address)values('"+id+"','"+member_name+"','"+member_contact_no+"','"+block+"','"+flatNo+"','"+emergency_contact_no+"','"+totalFamilyMembers+"','"+address+"')");
			if(addAllotment>0) {
				String message="Flat alloted successfully";
				session.setAttribute("success", message);
				response.sendRedirect("admin-add-allotment.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
