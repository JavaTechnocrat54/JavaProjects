package com.admin;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AdminAddProduct
 */
@WebServlet("/AdminAddProduct")
@MultipartConfig
public class AdminAddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("image/jpeg");
		  int id = Integer.parseInt(request.getParameter("id"));
		  Connection conn = DatabaseConnection.getConnection();
		  String sql = "SELECT * FROM tblproduct WHERE ID ='"+id+"'";
		  PreparedStatement ps;
		  try {
		   ps = conn.prepareStatement(sql);
		   ResultSet rs = ps.executeQuery();
		   if(rs.next()){
		    byte [] imageData = rs.getBytes("medicine_image"); // extract byte data from the resultset..
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			HttpSession session = request.getSession();
			Connection connection=null;
			PreparedStatement ps=null;
				int productId=Integer.parseInt(request.getParameter("productId"));
				String medicineName =request.getParameter("mName");
				String medicineType =request.getParameter("mType");
				String medicineDescription =request.getParameter("mDescription");
				String medicineMrpPrice =request.getParameter("mPrice");
				String medicineDiscountPrice =request.getParameter("mDiscPrice");
				String medicineQuantity =request.getParameter("mQuantity");
				
				String  medicineStatus=request.getParameter("mStatus");
				InputStream inputStream=null;
				Part part=request.getPart("uploadLogo");
				
					try {
						if(part!=null){
							   System.out.println(part.getName());
							            System.out.println(part.getSize());
							            System.out.println(part.getContentType());
							            inputStream = part.getInputStream();
							  }
						connection =DatabaseConnection.getConnection();
						ps=connection.prepareStatement("insert into tblproduct(id,medicine_name,medicine_type,medicine_description,medicine_image,medicine_mrp_price,medicine_discount_price,medicine_quantity,medicine_status) values(?,?,?,?,?,?,?,?,?)");
						ps.setInt(1, productId);
						ps.setString(2, medicineName);
						ps.setString(3,medicineType);
						ps.setString(4,medicineDescription);
						ps.setBlob(5,inputStream);
						ps.setString(6,medicineMrpPrice);
						ps.setString(7,medicineDiscountPrice);
						ps.setString(8,medicineQuantity);
						
						ps.setString(9,medicineStatus);
						int i=ps.executeUpdate();
						if (i > 0) {
							String success = "Medicine added successfully.";
							session.setAttribute("message", success);
							response.sendRedirect("admin-add-product.jsp");
						}

					} catch (Exception e) {
						e.printStackTrace();
					}
				

		
	}

}
