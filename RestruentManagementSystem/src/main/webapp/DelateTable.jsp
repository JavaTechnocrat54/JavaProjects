
<!DOCTYPE html>
<%@page import="com.connection.DatabaseConnection"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("orderId"));

int deleteProduct=DatabaseConnection.insertUpdateFromSqlQuery("delete from tblbooking where cid='"+id+"' ");
if(deleteProduct>0){
	response.sendRedirect("AdminDashbord.jsp");
}else{
	response.sendRedirect("AdminDashbord.jsp");
}
%>
</body>
</html>