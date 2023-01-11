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
 * Servlet implementation class CustomerBook
 */
@WebServlet("/CustomerBook")
public class CustomerBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @Override
    	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	   int id=Integer.parseInt(req.getParameter("id"));
    	   String name =req.getParameter("name");
    	   String price=req.getParameter("price");
    	   String address=req.getParameter("address");
    	   HttpSession hs=req.getSession();
    	   try {
    	   if ((String) hs.getAttribute("uname") == null) {
				resp.sendRedirect("mandatory-customer-login.jsp");
			} else {
			int cid=(Integer)hs.getAttribute("customerId");
			String cname=(String)hs.getAttribute("uname");
    	 int i=  DatabaseConnection.insertUpdateFromSqlQuery("insert into tblbook(houseid,hname,hprice,address,cid,cname,status)value('"+id+"','"+name+"','"+price+"','"+address+"','"+cid+"','"+cname+"','Pending')");
		resp.sendRedirect("customer-viewBooking.jsp");
			}
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	   }
   

}
