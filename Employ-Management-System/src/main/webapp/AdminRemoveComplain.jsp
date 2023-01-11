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

int i=DatabaseConnection.insertUpdateFromSqlQuery("delete from tblcomplain where cid='"+request.getParameter("EventId")+"'");
if(i>0){
	response.sendRedirect("admin-view-coplain.jsp");
}

%>
</body>
</html>