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
ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select status from tblreq where id='" + request.getParameter("orderId") + "'");
while (rs.next()) {
	if (rs.getString("status").equals("Confirm")) {
		statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblreq set status='Pending' where id='" + request.getParameter("orderId") + "'");
	} else {
		statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblreq set status='Confirm' where id='" + request.getParameter("orderId") + "'");
	}
}
if (statusMode > 0) {
	response.sendRedirect("admin-view-request.jsp");
} else {
	response.sendRedirect("admin-view-request.jsp");
}


%>
</body>
</html>