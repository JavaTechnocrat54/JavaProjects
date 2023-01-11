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
ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select status from tblbooking where bookid='" + request.getParameter("orderId") + "'");
while (rs.next()) {
	if (rs.getString(1).equals("Confirm")) {
		statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblbooking set status='Pending' where bookid='" + request.getParameter("orderId") + "'");
	} else {
		statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblbooking set status='Confirm' where bookid='" + request.getParameter("orderId") + "'");
	}
}
if (statusMode > 0) {
	response.sendRedirect("admin-view-booking.jsp");
} else {
	response.sendRedirect("admin-view-booking.jspp");
}


%>
</body>
</html>