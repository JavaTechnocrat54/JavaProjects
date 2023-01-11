<%@page import="java.lang.Thread.State"%>
<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String bloodgroup = request.getParameter("bloodgroup");
String incdec = request.getParameter("incdec");
String units = request.getParameter("units");
int units1 = Integer.parseInt(units);


try{
	Connection cn = ConnectionProvider.getCon();
	Statement st = cn.createStatement();
	if(incdec.equals("inc")){
		st.executeUpdate("update stock set units = units+'"+units1+"' where bloodgroup='"+bloodgroup+"'");
	}
	if(incdec.equals("dec")){
		st.executeUpdate("update stock set units = units-'"+units1+"' where bloodgroup='"+bloodgroup+"'");
	}
	response.sendRedirect("ManageStock.jsp?msg=valid");
}catch(Exception e)
{
	response.sendRedirect("ManageStock.jsp?msg=invalid");
}
%>