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


@WebServlet("/AddProducts")
@MultipartConfig
public class AddProducts extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("image/jpeg");
		  int id = Integer.parseInt(request.getParameter("id"));
		  Connection conn = DatabaseConnection.getConnection();
		  String sql = "SELECT * FROM tblproducts WHERE ID ='"+id+"'";
		  PreparedStatement ps;
		  try {
		   ps = conn.prepareStatement(sql);
		   ResultSet rs = ps.executeQuery();
		   if(rs.next()){
		    byte [] imageData = rs.getBytes("photo"); // extract byte data from the resultset..
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
		
				try {
					 String PName = request.getParameter("pname");
					  String Price = request.getParameter("price");
					  String Desc = request.getParameter("description");
					  String Mprice = request.getParameter("mprice");
					  String Status = request.getParameter("status");
					  String Catagory = request.getParameter("category");
					  InputStream inputStream = null;
					  Part part = request.getPart("uploadLogo");
					  System.out.println(PName+Price+Desc+Mprice+Status+Catagory);
					   ;//input stream of uploaded file
					  if(part!=null){
						   System.out.println(part.getName());
						            System.out.println(part.getSize());
						            System.out.println(part.getContentType());
						            inputStream = part.getInputStream();
						  }
					  Connection connection  =DatabaseConnection.getConnection();
						PreparedStatement ps=connection.prepareStatement("insert into tblproducts(pname,price,description,status,catagory,photo,mprice)value(?,?,?,?,?,?,?)");
						ps.setString(1, PName);
						ps.setString(2, Price);
						ps.setString(3, Desc);
						ps.setString(4, Status);
						ps.setString(5, Catagory);
						ps.setBlob(6,inputStream);
						ps.setString(7, Mprice);
						int i=ps.executeUpdate();
						if (i > 0) {
						String success = "Product added successfully.";
						session.setAttribute("message", success);
						response.sendRedirect("admin-add-product.jsp");
					}else {
						String failuer="Sorry this Servlet only handles file upload request";
						session.setAttribute("message",failuer );
						response.sendRedirect("admin-add-product.jsp");
					}
					

				} catch (Exception e) {
					e.printStackTrace();
				}
	}
}
