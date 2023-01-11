package com.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class CustomerEditProfile
 */
@WebServlet("/CustomerEditProfile")
public class CustomerEditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int customerId=Integer.parseInt(request.getParameter("customerId"));
		String cname=request.getParameter("cname");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String bloodg=request.getParameter("bloodg");
		String address=request.getParameter("address");
		
		
		HttpSession session=request.getSession();
		try {
			int editProfile=DatabaseConnection.insertUpdateFromSqlQuery("update tblcustomer set cname='"+cname+"',mobile='"+mobile+"',gender='"+gender+"',dob='"+dob+"',address='"+address+"',bloodg='"+bloodg+"' where uname='"+session.getAttribute("uname")+"' and id='"+customerId+"'");
			if(editProfile>0) {
				String message="Profile updated successfully.";
				session.setAttribute("profile-update", message);
				response.sendRedirect("Customer-veiw-profile.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
