<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
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
int statusMode = 0;
ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select status from tbltask where tid='" + request.getParameter("taskId") + "'");
while (rs.next()) {
	if (rs.getString(1).equals("Complite")) {
		statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tbltask set status='Pending' where tid='" + request.getParameter("taskId") + "'");
	} else {
		statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tbltask set status='Complite' where tid='" + request.getParameter("taskId") + "'");
		}
}
if (statusMode > 0) {
	response.sendRedirect("admin-assign-task.jsp");
} else {
	response.sendRedirect("admin-assign-task.jsp");
}


%>
</body>
</html>