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
int medicineId = Integer.parseInt(request.getParameter("medicineId"));
HttpSession hs=request.getSession();
int removeCustomer = DatabaseConnection.insertUpdateFromSqlQuery("delete from tblmedicine where id='" + medicineId + "'");
if (removeCustomer > 0) {
	String message="Medicine deleted";
	hs.setAttribute("medicine", message);
	response.sendRedirect("admin-view-medicine.jsp");
} else {
	response.sendRedirect("admin-view-medicine.jsp");
}

%>
</body>
</html>