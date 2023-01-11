
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String username = request.getParameter("user");
String password = request.getParameter("pass");
String value="invalid";
try{
 Connection cn=ConnectionProvider.getCon();
 Statement st=cn.createStatement();
 ResultSet rs=st.executeQuery("select * from donor where uname='"+username+"' and pass='"+password+"'");
 if(rs.next())
 {
	 pageContext.setAttribute("name",username,pageContext.SESSION_SCOPE);
	 response.sendRedirect("Userhome.jsp");
 }
 else{
	 response.sendRedirect("UserLogin.jsp");
	 pageContext.setAttribute("msg", "invalid",pageContext.SESSION_SCOPE);
 }
}catch(Exception e){
	e.printStackTrace();
}
%>