<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String name = request.getParameter("name");
String mobile = request.getParameter("mobile");
String email = request.getParameter("email");
String bloodgroup = request.getParameter("select");
String msg = "valid";
String status="Pending";
try{
	Connection cn = ConnectionProvider.getCon();
	PreparedStatement ps = cn.prepareStatement("insert into bloodrequest values(?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, mobile);
	ps.setString(3, email);
	ps.setString(4, bloodgroup);
	ps.setString(5, status);
	ps.executeUpdate();
	pageContext.setAttribute("msg", msg ,pageContext.SESSION_SCOPE);
	response.sendRedirect("RequestForBlood.jsp");
}catch(Exception e)
{
	pageContext.setAttribute("msg", "invalid",pageContext.SESSION_SCOPE);
	response.sendRedirect("RequestForBlood.jsp");
}
%>