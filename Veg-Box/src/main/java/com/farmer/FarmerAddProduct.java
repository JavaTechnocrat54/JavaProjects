package com.farmer;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class FarmerAddProduct
 */
@WebServlet("/FarmerAddProduct")
public class FarmerAddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId=Integer.parseInt(request.getParameter("productId"));
		String type=	request.getParameter("mType");
		int quantity=Integer.parseInt(request.getParameter("mQuantity"));
		double qu=Double.parseDouble(request.getParameter("mQuantity"));
		String address=	request.getParameter("address");
		double Pf=50.0;
		
		double total=0.0;
		String status="pending";
		try {
	ResultSet rs=	DatabaseConnection.getResultFromSqlQuery("select * from tblproduct where medicine_name='"+type+"'");
		if(rs.next()) { double price=rs.getDouble("medicine_discount_price");
		System.out.println(rs.getDouble("medicine_discount_price"));
		total=price*qu-Pf;
		System.out.println(total);
		int i=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblsell(sellid,type,quantity,address,status,price,pf,total)value('"+productId+"','"+type+"','"+quantity+"','"+address+"','"+status+"','"+price+"','"+Pf+"','"+total+"')");
		if(i>0) {
			response.sendRedirect("farmer-view-sell.jsp");
		}
		}
		}catch(Exception e) {
		e.printStackTrace();
	}
	}
	

}
