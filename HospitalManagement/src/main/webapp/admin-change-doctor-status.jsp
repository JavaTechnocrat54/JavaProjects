<%@page import="com.connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%
try {
	int statusMode = 0;
	ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select status from tbldoctor where id='" + request.getParameter("doctorId") + "'");
	while (rs.next()) {
		if (rs.getString(1).equals("Active")) {
			statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tbldoctor set status='Onleave' where id='" + request.getParameter("doctorId") + "'");
		} else {
			statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tbldoctor set status='Active' where id='" + request.getParameter("doctorId") + "'");
		}
	}
	if (statusMode > 0) {
		response.sendRedirect("admin-Veiw-doctor.jsp");
	} else {
		response.sendRedirect("admin-Veiw-doctor.jsp");
	}
} catch (Exception e) {
	e.printStackTrace();
}


%>