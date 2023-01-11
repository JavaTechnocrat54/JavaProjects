<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.lang.Thread.State"%>

<%@ page import="java.sql.*"%>
<%
String bloodgroup = request.getParameter("bloodgroup");
String incdec = request.getParameter("incdec");
String units = request.getParameter("units");
int units1 = Integer.parseInt(units);


try{
	Connection cn = DatabaseConnection.getConnection();
			Statement st = cn.createStatement();
	if(incdec.equals("inc")){
		st.executeUpdate("update tblstock set units = units+'"+units1+"' where bloodgroup='"+bloodgroup+"'");
	}
	if(incdec.equals("dec")){
		st.executeUpdate("update tblstock set units = units-'"+units1+"' where bloodgroup='"+bloodgroup+"'");
	}
	response.sendRedirect("admin-manage-stock.jsp?msg=valid");
}catch(Exception e)
{
	response.sendRedirect("admin-manage-stock.jsp?msg=invalid");
}
%>