package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EditProfile
 */
@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String emergencyContactNo=request.getParameter("emergencyMobileNo");
		int familyMembers=Integer.parseInt(request.getParameter("numberOfMembers"));
		String address=request.getParameter("address");
		HttpSession session=request.getSession();
		try {
			int editProfile=DatabaseConnection.insertUpdateFromSqlQuery("update tblallotments set emergency_contact_no='"+emergencyContactNo+"',total_family_members='"+familyMembers+"',permanent_address='"+address+"' where member_contact_no='" + session.getAttribute("mobile") + "' and block='"+ session.getAttribute("block") + "' and flat_no='" + session.getAttribute("flatNo") + "'");
			if(editProfile>0) {
				String message="Profile edited successfully.";
				session.setAttribute("profile", message);
				response.sendRedirect("user-profile.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
