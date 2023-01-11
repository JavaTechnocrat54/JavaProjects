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
 * Servlet implementation class EmployeeAccount
 */
@WebServlet("/EmployeeAccount")
public class EmployeeAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int customerId=Integer.parseInt(request.getParameter("employeeId"));
		String cname=request.getParameter("cname");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		
		String job=request.getParameter("job");
		
		
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String pincode=request.getParameter("pincode");
		String salary=request.getParameter("salary");
		String dob=request.getParameter("dob");
		String uname=request.getParameter("uname");
		String upass=request.getParameter("upass");
		
		HttpSession hs=request.getSession();
		try {
			int addCustomer=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblemployee(eid,name,email,dob,mobile,gender,scalary,job,address,pincode,status,uname,upass) values('"+customerId+"','"+cname+"','"+email+"','"+dob+"','"+mobile+"','"+gender+"','"+salary+"','"+job+"','"+address+"','"+pincode+"','Active','"+uname+"','"+upass+"')");
			if(addCustomer>0) {
				String message="employee account created successfully.";
				hs.setAttribute("employee-account", message);
				response.sendRedirect("admin-add-employee.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}


}
