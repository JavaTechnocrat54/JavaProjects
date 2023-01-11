package com.consumer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String STARTERS = request.getParameter("STARTERS");
		String SPECIALITY = request.getParameter("SPECIALITY");
		String SALAD = request.getParameter("SALAD");
		int stp=Integer.parseInt(request.getParameter("stp"));
		int spe=Integer.parseInt(request.getParameter("spe"));
		int sal=Integer.parseInt(request.getParameter("sal"));
		HttpSession hs = request.getSession();
		int uid = (int) hs.getAttribute("id");
		int stprice=stp*40;
		int spprice=spe*300;
		int salprice=sal*30;
		
		int addOrder=DatabaseConnection.insertUpdateFromSqlQuery("INSERT INTO tblorder (uid,STARTERS,SPECIALITY,SALAD,stprice,spprice,salprice) VALUES ('"+uid+"','"+STARTERS+"','"+SPECIALITY+"','"+SALAD+"','"+stprice+"','"+spprice+"','"+salprice+"')");
	if(addOrder>0) {
		response.sendRedirect("viewOreder.jsp");
	}else {
		response.sendRedirect("viewOreder.jsp");
	}
	
	}

}
