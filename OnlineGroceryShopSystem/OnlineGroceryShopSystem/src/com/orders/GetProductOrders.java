package com.orders;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.*;
import java.sql.*;

/**
 * Servlet implementation class GetProductOrders
 */
@WebServlet(name = "GetProductsOrder", urlPatterns = { "/GetProductsOrder" })
public class GetProductOrders extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("image/jpeg");
		  int id = Integer.parseInt(request.getParameter("id"));
		  Connection conn = DatabaseConnection.getConnection();
		  String sql = "SELECT * FROM tblorders WHERE order_no ='"+id+"'";
		  PreparedStatement ps;
		  try {
		   ps = conn.prepareStatement(sql);
		   ResultSet rs = ps.executeQuery();
		   if(rs.next()){
		    byte [] imageData = rs.getBytes("image"); // extract byte data from the resultset..
		    OutputStream os = response.getOutputStream(); // output with the help of outputStream 
		             os.write(imageData);
		             os.flush();
		             os.close();
		   }
		  } catch (SQLException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		   response.getOutputStream().flush();
		   response.getOutputStream().close();
		  }
		  
		 }

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession hs=request.getSession();
		int id = 0;
		int order_no = 1000;
		int orderProducts = 0;
		int paymentId=Integer.parseInt(request.getParameter("payment_id"));
		String customerName = request.getParameter("name");
		String mobile_number = request.getParameter("phone");
		String email_id = request.getParameter("email");
		String address = request.getParameter("address");
		String address_type = request.getParameter("addressType");
		String pincode = request.getParameter("pincode");
		String product_name = null;
		int quantity = 0;
		String product_price = null;
		String product_selling_price = null;
		String product_total_price = null;
		String order_status = null;
		String payment_mode = request.getParameter("payment");
		HttpSession session = request.getSession();
		session.setAttribute("paymentId", paymentId);
		Connection cn=DatabaseConnection.getConnection();
	
		try {
			ResultSet rsMaxOrderNo = DatabaseConnection.getResultFromSqlQuery("select max(order_no) from tblorders");
			if (rsMaxOrderNo.next()) {
				order_no = rsMaxOrderNo.getInt(1);
				order_no=1000+order_no;
			}
			System.out.println("Order Id " + order_no);
			ResultSet totalProduct = DatabaseConnection.getResultFromSqlQuery(
					"select  tblproducts.photo,tblproducts.pname,tblcart.quantity,tblcart.mrp_price,tblcart.discount_price,tblcart.total_price,tblcart.product_id from tblproducts,tblcart where tblproducts.id=tblcart.product_id and customer_id='"
							+ session.getAttribute("id") + "' ");
			while (totalProduct.next()) {
				order_no++;
				System.out.println("Order No  " + order_no);
				Blob blob =totalProduct.getBlob("photo");;
				 System.out.println(blob);
				product_name = totalProduct.getString(2);
				System.out.println(product_name);
				quantity = totalProduct.getInt(3);
				product_price = totalProduct.getString(4);
				product_selling_price = totalProduct.getString(5);
				product_total_price = totalProduct.getString(6);
				order_status = "Pending";
				System.out.println(blob+product_name+product_price+product_selling_price+product_total_price);
				String sql="insert into tblorders(id,order_no,customer_name,mobile_number,email_id,address,address_type,pincode,image,product_name,quantity,product_price,product_selling_price,product_total_price,order_status,payment_mode,payment_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
												
				PreparedStatement ps =cn.prepareStatement(sql); 
				ps.setInt(1, id);
				ps.setInt(2,order_no);
				ps.setString(3, customerName);
				ps.setString(4, mobile_number);
				ps.setString(5,email_id);
				ps.setString(6, address);
				ps.setString(7,address_type);
				ps.setString(8, pincode);
				ps.setBlob(9, blob);
				ps.setString(10,product_name );
				System.out.println(product_name);
				ps.setInt(11,quantity );
				ps.setString(12,product_price  );
				ps.setString(13,product_selling_price);
				ps.setString(14, product_total_price);
				ps.setString(15, order_status);
				ps.setString(16, payment_mode);
				ps.setInt(17, paymentId);
				orderProducts=ps.executeUpdate();
								
			DatabaseConnection.insertUpdateFromSqlQuery("delete from tblcart where customer_id='" + session.getAttribute("id") + "'");
			if (orderProducts > 0) {
				String message="Thank you for your order.";
				hs.setAttribute("success", message);
				response.sendRedirect("checkout.jsp");
			} else {
				response.sendRedirect("checkout.jsp");
			}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
