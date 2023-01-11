<%@page import="com.connection.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));

int deleteProduct=DatabaseConnection.insertUpdateFromSqlQuery("delete from tbluser where id='"+id+"' ");
if(deleteProduct>0){
	response.sendRedirect("AdminDashbord.jsp");
}else{
	response.sendRedirect("AdminDashbord.jsp");
}


%>
</body>
</html>