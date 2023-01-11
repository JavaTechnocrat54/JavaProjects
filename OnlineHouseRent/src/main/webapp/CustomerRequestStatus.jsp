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
ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select status from tblbook where houseid='" + request.getParameter("orderId") + "'");
while (rs.next()) {
	if (rs.getString(1).equals("Confirm")) {
		statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblbook set status='Pending' where houseid='" + request.getParameter("orderId") + "'");
	} else {
		statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblbook set status='Confirm' where houseid='" + request.getParameter("orderId") + "'");
		}
}
if (statusMode > 0) {
	response.sendRedirect("admin-veiw-booking.jsp");
} else {
	response.sendRedirect("admin-veiw-booking.jsp");
}


%>
</body>
</html>