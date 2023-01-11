package com.customer;

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
 * Servlet implementation class CustomerAccount
 */
@WebServlet("/CustomerAccount")
@MultipartConfig
public class CustomerAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("image/png");
			long id=Long.parseLong(request.getParameter("id"));
			 Connection conn = DatabaseConnection.getConnection();
			  String sql = "SELECT * FROM tblcustomer WHERE accountno ='"+id+"'";
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
		long customerId = Long.parseLong(request.getParameter("customerId"));
		String name = request.getParameter("name");
		String aadhar = request.getParameter("aadhar");
		String pan = request.getParameter("pan");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		Part img = request.getPart("img");
		if (img != null) {
			img.getContentType();
			img.getSize();
		}
		InputStream is = img.getInputStream();
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		String pincode = request.getParameter("pincode");
		String address = request.getParameter("address");
		String pass = request.getParameter("pass");
		String status = "block";
		double money=5000.00;
		HttpSession hs=request.getSession();
		
		try {
			Connection cn = DatabaseConnection.getConnection();
			PreparedStatement ps = cn.prepareStatement(
					"insert into tblcustomer(accountno,name,aadhar,pan,email,mobile,dob,gender,img,city,state,country,pincode,address,pass,status,balance)value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setLong(1, customerId);
		ps.setString(2,name);
		ps.setString(3,aadhar);
		ps.setString(4,pan);
		ps.setString(5,email);
		ps.setString(6,mobile);
		ps.setString(7,dob);
		ps.setString(8,gender);
		ps.setBlob(9, is);
		ps.setString(10,city);
		ps.setString(11,state);
		ps.setString(12,country);
		ps.setString(13,pincode);
		ps.setString(14,address);
		ps.setString(15,pass);
		ps.setString(16,status);
		ps.setDouble(17, money);
		int i=ps.executeUpdate();
		if(i>0) {
			hs.setAttribute("success", "RegSuccess");
			response.sendRedirect("customer-account.jsp");
		}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
