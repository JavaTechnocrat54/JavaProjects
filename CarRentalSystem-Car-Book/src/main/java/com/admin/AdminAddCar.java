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
 * Servlet implementation class AdminAddCar
 */
@WebServlet("/AdminAddCar")
@MultipartConfig
public class AdminAddCar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("image/jpeg");
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		Connection conn = DatabaseConnection.getConnection();
		String sql = "SELECT * FROM tblcar WHERE carid ='" + id + "'";
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				byte[] imageData = rs.getBytes("image"); // extract byte data from the resultset..
				OutputStream os = response.getOutputStream(); // output with the help of outputStream
				os.write(imageData);
				os.close();
				os.flush();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.getOutputStream().close();
			response.getOutputStream().flush();

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Connection connection = null;
		PreparedStatement ps = null;

		int id = Integer.parseInt(request.getParameter("vid"));
		String seat = request.getParameter("seat");
		String lug = request.getParameter("lug");
		String fule = request.getParameter("fule");
		String mileag = request.getParameter("mileag");
		String vno = request.getParameter("vno");
		int day = Integer.parseInt(request.getParameter("day"));
		int wek = Integer.parseInt(request.getParameter("wek"));
		int Mon = Integer.parseInt(request.getParameter("Mon"));
		String name = request.getParameter("name");
		String status = "Active";
		Part part = request.getPart("img");
		InputStream inputStream = null;
		try {
			if (part != null) {
				System.out.println(part.getName());
				System.out.println(part.getSize());
				System.out.println(part.getContentType());
				inputStream = part.getInputStream();
			}
			connection = DatabaseConnection.getConnection();
			ps = connection.prepareStatement(
					"insert into tblcar(carid,model,regno,seat,lug,fule,oned,onew,onem,image,milea,status) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setString(3, vno);
			ps.setString(4, seat);
			ps.setString(5, lug);
			ps.setString(6, fule);
			ps.setInt(7, day);
			ps.setInt(8, wek);
			ps.setInt(9, Mon);
			ps.setBlob(10, inputStream);
			ps.setString(11, mileag);
			ps.setString(12, status);
			int i = ps.executeUpdate();
			if (i > 0) {
				String success = "Car added successfully.";
				session.setAttribute("message", success);
				response.sendRedirect("admin-view-car.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
