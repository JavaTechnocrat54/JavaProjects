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
 * Servlet implementation class CustomerApplayLoan
 */
@WebServlet("/CustomerApplayLoan")
public class CustomerApplayLoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String 	cname	=	request.getParameter("cname");
	String email	=request.getParameter("email");
	String 	mobile=	request.getParameter("mobile");
	String 	type	=request.getParameter("type");
	double 	amount=Double.parseDouble(request.getParameter("amount"));
	String 	address=	request.getParameter("address");
		HttpSession hs=request.getSession();
		String status="Pending";
		int i=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblloan(accountno,name,email,moblile,loantype,amount,address,status)value('"+hs.getAttribute("accountno")+"','"+cname+"','"+email+"','"+mobile+"','"+type+"','"+amount+"','"+address+"','"+status+"')");
		if(i>0) {
			hs.setAttribute("success", "applay");
			response.sendRedirect("LoanApplay.jsp");
		}else {
			hs.setAttribute("failed", "failed");
			response.sendRedirect("LoanApplay.jsp");
		}
	}

}
