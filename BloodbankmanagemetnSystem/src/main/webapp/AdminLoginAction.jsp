<%
String username = request.getParameter("user");
String password = request.getParameter("pass");
if("admin".equals(username) && "admin".equals(password))
{
	response.sendRedirect("home.jsp");
}
else
{
	response.sendRedirect("AdminLogin.jsp?msg=invalid");
}
%>