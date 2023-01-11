package com.farmer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class FarmerEditProfile
 */
@WebServlet("/FarmerEditProfile")
public class FarmerEditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cname=request.getParameter("cname");
		String mobile=request.getParameter("mobile");
		String address=request.getParameter("address");
		String pincode=request.getParameter("pincode");
		HttpSession session=request.getSession();
		
		try {
			int editCustomer=DatabaseConnection.insertUpdateFromSqlQuery("update tblfarmer set full_name='"+cname+"',mobile_no='"+mobile+"',address='"+address+"',pincode='"+pincode+"' where uname='"+session.getAttribute("uname")+"'");
			if(editCustomer>0) {
				String message="Customer profile updated successfully.";
				session.setAttribute("success", message);
				response.sendRedirect("farmer-profile.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
