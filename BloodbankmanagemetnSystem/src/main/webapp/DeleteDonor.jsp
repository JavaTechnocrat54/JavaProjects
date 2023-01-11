<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String id = request.getParameter("id");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from donor where id='"+id+"'");
	response.sendRedirect("EditDeleteList.jsp?msg=deleted");
}catch(Exception e)
{
	response.sendRedirect("EditDeleteList.jsp?msg=invalid");
} 
%>