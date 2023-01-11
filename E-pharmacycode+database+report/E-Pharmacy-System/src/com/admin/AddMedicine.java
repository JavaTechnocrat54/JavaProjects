package com.admin;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddMedicine
 */
@MultipartConfig
@WebServlet("/AddMedicine")
public class AddMedicine extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 response.setContentType("image/jpeg");
		  int id = Integer.parseInt(request.getParameter("id"));
		  Connection conn = DatabaseConnection.getConnection();
		  String sql = "SELECT * FROM tblmedicine WHERE ID ='"+id+"'";
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
	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Connection connection=null;
		PreparedStatement ps=null;
			int medicineId=Integer.parseInt(request.getParameter("medicineId"));
			String medicineName =request.getParameter("mName");
			String medicineType =request.getParameter("mType");
			String medicineDescription =request.getParameter("mDescription");
			String medicineMrpPrice =request.getParameter("mPrice");
			String medicineDiscountPrice =request.getParameter("mDiscPrice");
			String medicineQuantity =request.getParameter("mQuantity");
			String medicineManufacturingDate  =request.getParameter("mDate");
			String medicineExpiryDate =request.getParameter("eDate");
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
					ps=connection.prepareStatement("insert into tblmedicine(id,medicine_name,medicine_type,medicine_description,medicine_image,medicine_mrp_price,medicine_discount_price,medicine_quantity,medicine_manufacturing_date,medicine_expiry_date,medicine_status) values(?,?,?,?,?,?,?,?,?,?,?)");
					ps.setInt(1, medicineId);
					ps.setString(2, medicineName);
					ps.setString(3,medicineType);
					ps.setString(4,medicineDescription);
					ps.setBlob(5,inputStream);
					ps.setString(6,medicineMrpPrice);
					ps.setString(7,medicineDiscountPrice);
					ps.setString(8,medicineQuantity);
					ps.setString(9,medicineManufacturingDate);
					ps.setString(10,medicineExpiryDate);
					ps.setString(11,medicineStatus);
					int i=ps.executeUpdate();
					if (i > 0) {
						String success = "Medicine added successfully.";
						session.setAttribute("message", success);
						response.sendRedirect("admin-add-medicine.jsp");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			

	}
}
