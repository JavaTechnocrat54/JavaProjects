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
 * Servlet implementation class AdminEditCar
 */
@WebServlet("/AdminEditCar")
public class AdminEditCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("vid"));
		String seat = request.getParameter("seat");
		String lug = request.getParameter("lug");
		String fule = request.getParameter("fule");
		String mileag = request.getParameter("mileag");
		String vno = request.getParameter("vno");
		int day = Integer.parseInt(request.getParameter("day"));
		int wek = Integer.parseInt(request.getParameter("wek"));
		int Mon = Integer.parseInt(request.getParameter("Mon"));
		String name = request.getParameter("name");
		String status = request.getParameter("status");
		HttpSession hs=request.getSession();
		int i=DatabaseConnection.insertUpdateFromSqlQuery("update tblcar set model='"+name+"',seat='"+seat+"',lug='"+lug+"',oned='"+day+"',onew='"+wek+"',onem='"+Mon+"',milea='"+mileag+"',status='"+status+"' where carid='"+id+"' ");
		if(i>0) {
			response.sendRedirect("admin-view-car.jsp");
			hs.setAttribute("success", "edit");
		}
	}

}
