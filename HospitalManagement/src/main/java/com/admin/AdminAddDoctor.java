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
import javax.servlet.http.Part;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AdminAddDoctor
 */
@WebServlet("/AdminAddDoctor")
@MultipartConfig
public class AdminAddDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 response.setContentType("image/jpeg");
		  int id = Integer.parseInt(request.getParameter("id"));
		  Connection conn = DatabaseConnection.getConnection();
		  String sql = "SELECT * FROM tbldoctor WHERE ID ='"+id+"'";
		  PreparedStatement ps;
		  try {
		   ps = conn.prepareStatement(sql);
		   ResultSet rs = ps.executeQuery();
		   if(rs.next()){
		    byte [] imageData = rs.getBytes("img"); // extract byte data from the resultset..
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int id=Integer.parseInt(request.getParameter("id"));
	String name=request.getParameter("name");
	String dept=request.getParameter("department");
	String email=request.getParameter("email");
	String pass=request.getParameter("Password");
	String mobile=request.getParameter("Mobile");
	Part part =request.getPart("Photo");

	
	if(part!=null) {
		System.out.println(part.getName());
		System.out.println(part.getContentType());
		System.out.println(part.getSize());
	}
	InputStream inputStream=part.getInputStream();
	try {
		Connection cn= DatabaseConnection.getConnection();
		PreparedStatement ps=cn.prepareStatement("insert into tbldoctor(id,name,department,email,password,mobile,img,status)value(?,?,?,?,?,?,?,?)");
		ps.setInt(1, id);
		ps.setString(2, name);
		ps.setString(3, dept);
		ps.setString(4, email);
		ps.setString(5, pass);
		ps.setString(6, mobile);
		ps.setBlob(7, inputStream);
		ps.setString(8, "Active");
		int adddoctor=ps.executeUpdate();
		if(adddoctor>0) {
			response.sendRedirect("admin-dashboard.jsp");
		}
	}catch (Exception e) {
		e.printStackTrace();
	}
	
	
	
	
	}

}
