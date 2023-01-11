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
int Id = Integer.parseInt(request.getParameter("Id"));
HttpSession hs=request.getSession();
int removeCustomer = DatabaseConnection.insertUpdateFromSqlQuery("delete from tblcontact where contact_id='" + Id + "'");
if (removeCustomer > 0) {
	
	
	response.sendRedirect("admin-view-contact.jsp");
} else {
	response.sendRedirect("admin-view-contact.jsp");
}

%>
</body>
</html>