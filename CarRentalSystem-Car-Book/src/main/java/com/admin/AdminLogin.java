package com.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String uname = request.getParameter("uname");
			String pass = request.getParameter("upass");
			String vercode = request.getParameter("vercode");
			String captchaDB = null;
			HttpSession hs = request.getSession();
			String tokens = UUID.randomUUID().toString();
			Random random=new Random();
			int length = 7 + (Math.abs(random.nextInt()) % 3);
			String newRandomCaptcha=" ";
			StringBuffer captchaStringBuffer = new StringBuffer();
			for (int i = 0; i < length; i++) {
				int baseCharNumber = Math.abs(random.nextInt()) % 62;
				int charNumber = 0;
				if (baseCharNumber < 26) {
					charNumber = 65 + baseCharNumber;
				}
				else if (baseCharNumber < 52){
					charNumber = 97 + (baseCharNumber - 26);
				}
				else {
					charNumber = 48 + (baseCharNumber - 52);
				}
				newRandomCaptcha=(captchaStringBuffer.append((char)charNumber)).toString();
			}
			Connection con = DatabaseConnection.getConnection();
			Statement st = con.createStatement();
			ResultSet captchResultSet = DatabaseConnection.getResultFromSqlQuery("select * from tblcaptcha");
			if (captchResultSet.next()) {
				captchaDB = captchResultSet.getString(1);
			}
			if (captchaDB.equals(vercode)) {
				ResultSet resultset = st.executeQuery("select * from tbladmin where email='" + uname + "' AND pass='" + pass + "'");
				if (resultset.next()) {
					hs.setAttribute("uname",resultset.getString("name"));
					hs.setAttribute("email", resultset.getString("email"));
					int update = DatabaseConnection.insertUpdateFromSqlQuery("update tblcaptcha set captcha='"+ newRandomCaptcha + "'");
					response.sendRedirect("admin-dashboard.jsp?_tokens='" + tokens + "'");
				} else {
					String message = "You have enter wrong credentials";
					hs.setAttribute("credential", message);
					response.sendRedirect("admin-login.jsp");
					int update = DatabaseConnection.insertUpdateFromSqlQuery("update tblcaptcha set captcha='"+ newRandomCaptcha + "'");
				}
			} else {
				String message = "You have enter invalid verification code";
				hs.setAttribute("verificationCode", message);
				response.sendRedirect("admin-login.jsp");
				int update = DatabaseConnection.insertUpdateFromSqlQuery("update tblcaptcha set captcha='"+ newRandomCaptcha + "'");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
