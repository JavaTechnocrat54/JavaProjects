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
ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select status,quantity,bloodg from tbldoner where did='" + request.getParameter("orderId") + "'");
while (rs.next()) {
	if (rs.getString(1).equals("Confirm")) {
		DatabaseConnection.insertUpdateFromSqlQuery("update tblstock set units = units-'"+rs.getInt("quantity")+"' where bloodgroup='"+rs.getString("bloodg")+"'");
		statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tbldoner set status='Pending' where did='" + request.getParameter("orderId") + "'");
	} else {
		DatabaseConnection.insertUpdateFromSqlQuery("update tblstock set units = units+'"+rs.getInt("quantity")+"' where bloodgroup='"+rs.getString("bloodg")+"'");
		statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tbldoner set status='Confirm' where did='" + request.getParameter("orderId") + "'");
	}
}
if (statusMode > 0) {
	response.sendRedirect("admin-view-donation.jsp");
} else {
	response.sendRedirect("admin-view-donation.jsp");
}


%>
</body>
</html>