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
 * Servlet implementation class CustomerAppoiment
 */
@WebServlet("/CustomerAppoiment")
public class CustomerAppoiment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs=request.getSession();
		int Id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String date=request.getParameter("date");
		String customerid=(String)hs.getAttribute("CustomerId");
		String time=request.getParameter("time");
		String dname=request.getParameter("mType");
		String Status="Pending";
		try {
			int addCustomer=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblappointment(id,custid,name,doctorname,date,time,status)values('"+Id+"','"+customerid+"','"+name+"','"+dname+"','"+date+"','"+time+"','"+Status+"')");
			if(addCustomer>0) {
				String message="Customer Appoiment successfully.";
				hs.setAttribute("customer-Appoiment", message);
				response.sendRedirect("bookappointment.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
