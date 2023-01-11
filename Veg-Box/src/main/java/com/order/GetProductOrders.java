package com.order;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class GetProductOrders
 */
@WebServlet("/GetProductOrders")
public class GetProductOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("image/jpeg");
		int  id=Integer.parseInt(request.getParameter("id"));
		Connection conn = DatabaseConnection.getConnection();
		String sql = "SELECT * FROM tblorder WHERE order_no ='" +id + "'";
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				byte[] imageData = rs.getBytes("medicine_image"); // extract byte data from the resultset..
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
		HttpSession hs = request.getSession();
		int id = 0;
		int quantity = 0;
		int order_no = 1000;
		int orderMedicine = 0;
		String order_status = null;
		int medicineId = 0;
		String medicine_name = null;
		String medicine_price = null;
		String medicine_selling_price = null;
		String medicine_total_price = null;
		String medicine_status = null;
		String customerName = request.getParameter("name");
		String mobile_number = request.getParameter("phone");
		String email_id = request.getParameter("email");
		String address = request.getParameter("address");
		String pincode = request.getParameter("pincode");
		String payment_mode = request.getParameter("payment");
		int paymentId = Integer.parseInt(request.getParameter("payment_id"));
		HttpSession session = request.getSession();
		session.setAttribute("paymentId", paymentId);

		try {
			ResultSet rsMaxOrderNo = DatabaseConnection.getResultFromSqlQuery("select max(order_no) from tblorder");
			if (rsMaxOrderNo.next()) {
				order_no = rsMaxOrderNo.getInt(1);
				order_no = 1000 + order_no;
			}
			System.out.println("Order Id " + order_no);
			ResultSet totalMedicine = DatabaseConnection.getResultFromSqlQuery(
					"select tblproduct.medicine_image,tblproduct.medicine_name,tblcart.quantity,tblcart.medicine_mrp_price,tblcart.medicine_discount_price,tblcart.total_medicines_price,tblcart.medicine_id,tblproduct.id from tblproduct,tblcart where tblproduct.id=tblcart.medicine_id and customer_id='"
							+ session.getAttribute("customerId") + "' ");
			while (totalMedicine.next()) {
				order_no++;
				System.out.println("Order No  " + order_no);
				Blob medicine_image_name = totalMedicine.getBlob(1);
				medicine_name = totalMedicine.getString(2);
				quantity = totalMedicine.getInt(3);
				medicine_price = totalMedicine.getString(4);
				medicine_selling_price = totalMedicine.getString(5);
				medicine_total_price = totalMedicine.getString(6);
				medicineId = totalMedicine.getInt(8);
				order_status = "Pending";
				Connection connection = DatabaseConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(
						"insert into tblorder(id,order_no,customer_name,email_id,mobile_no,address,pincode,medicine_image,medicine_name,quantity,medicine_mrp_price,medicine_discount_price,medicine_total_price,medicine_order_status,payment_mode,payment_id)value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setInt(1, id);
				ps.setInt(2, order_no);
				ps.setString(3, customerName);
				ps.setString(4, email_id);
				ps.setString(5, mobile_number);
				ps.setString(6, address);
				ps.setString(7, pincode);
				ps.setBlob(8, medicine_image_name);
				ps.setString(9, medicine_name);
				ps.setInt(10, quantity);
				ps.setString(11, medicine_price);
				ps.setString(12, medicine_selling_price);
				ps.setString(13, medicine_total_price);
				ps.setString(14, order_status);
				ps.setString(15, payment_mode);
				ps.setInt(16, paymentId);
				orderMedicine = ps.executeUpdate();
				int updateMedicineQuantityInMedicine = DatabaseConnection
						.insertUpdateFromSqlQuery("update tblproduct set medicine_quantity= medicine_quantity-'"
								+ quantity + "' where id='" + medicineId + "'");
			}

			DatabaseConnection.insertUpdateFromSqlQuery(
					"delete from tblcart where customer_id='" + session.getAttribute("customerId") + "'");
			if (orderMedicine > 0) {
				String message = "Thank you for your order.";
				hs.setAttribute("success", message);
				response.sendRedirect("customer-cart.jsp");
			} else {
				response.sendRedirect("customer-cart.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
