package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EventsAccount
 */
@WebServlet("/EventsAccount")
public class EventsAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int EventsId=Integer.parseInt(request.getParameter("EventsId"));
		
		String ename=request.getParameter("cname");
		String edate=request.getParameter("edate");
		String estrat=request.getParameter("estrat");
		String eend=request.getParameter("eend");
		String desc=request.getParameter("desc");
		
		HttpSession hs=request.getSession();
		try {
			int addEvent=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblevents (`eid`, `ename`, `edate`, `etimef`, `etimed`, `desc`) values('"+EventsId+"','"+ename+"','"+edate+"','"+estrat+"','"+eend+"','"+desc+"')");
			if(addEvent>0) {
				String message="Event added successfully.";
				hs.setAttribute("Events-account", message);
				response.sendRedirect("admin-add-event.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
