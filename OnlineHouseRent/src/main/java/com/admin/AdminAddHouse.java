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

import org.apache.catalina.ant.jmx.JMXAccessorQueryTask;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AdminAddHouse
 */
@WebServlet("/AdminAddHouse")
@MultipartConfig
public class AdminAddHouse extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 response.setContentType("image/jpeg");
		  int id = Integer.parseInt(request.getParameter("id"));
		  Connection conn = DatabaseConnection.getConnection();
		  String sql = "SELECT * FROM tblhouse WHERE ID ='"+id+"'";
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
	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Connection connection=null;
		PreparedStatement ps=null;
		int houseId=Integer.parseInt(request.getParameter("houseId"));
		String htype =request.getParameter("htype");
		String Name=request.getParameter("hName");
		String Price=request.getParameter("hPrice");
		String Bath=request.getParameter("hbath");
		String bed=request.getParameter("hBed");
		String sqft=request.getParameter("hsqft");
		String OwnerName=request.getParameter("OWname");
		String OWMobile=request.getParameter("owmobile");
		String status=request.getParameter("hStatus");
		String hDesc=request.getParameter("hDescription");
		String hAddress=request.getParameter("hAddress");
		
		
		
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
					ps=connection.prepareStatement("insert into tblhouse(`id`, `hname`, `type`, `price`, `bed`, `bath`, `sqft`, `address`, `owname`, `owmobile`, `img` ,`desc`,  `status`) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
					ps.setInt(1,houseId);
					ps.setString(2,Name);
					ps.setString(3,htype);
					ps.setString(4,Price);
					ps.setString(5,bed);
					ps.setString(6,Bath);
					ps.setString(7,sqft);
					ps.setString(8,hAddress);
					ps.setString(9,OwnerName);
					ps.setString(10,OWMobile);
					ps.setBlob(11,inputStream);
					ps.setString(12,hDesc);
					ps.setString(13,status);
					int i=ps.executeUpdate();
					if (i > 0) {
						String success = "House added successfully.";
						session.setAttribute("message", success);
						response.sendRedirect("admin-add-house.jsp");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			

	}
}
