<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String mobilenumber = request.getParameter("mobilenumber") ;
try{
	Connection cn = ConnectionProvider.getCon();
	PreparedStatement ps = cn.prepareStatement("update bloodrequest set status='completed' where mobilenumber = ?");
	ps.setString(1, mobilenumber);
	
	ps.executeUpdate();
	response.sendRedirect("RequestForBlood.jsp");
}catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("RequestForBlood.jsp");
} 
%>