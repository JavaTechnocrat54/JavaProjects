<%@page import="com.connection.DatabaseConnection"%>
<%
int Id = Integer.parseInt(request.getParameter("Id"));
HttpSession hs=request.getSession();
int removeCustomer = DatabaseConnection.insertUpdateFromSqlQuery("delete from tblcustomer where id='" + Id + "'");
if (removeCustomer > 0) {
	
	
	response.sendRedirect("admin-view-contact.jsp");
} else {
	response.sendRedirect("admin-view-contact.jsp");
}

%>