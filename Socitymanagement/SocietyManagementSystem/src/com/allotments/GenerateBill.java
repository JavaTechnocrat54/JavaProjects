package com.allotments;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class GenerateBill
 */
@WebServlet("/GenerateBill")
public class GenerateBill extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int billId=0;
		String block=request.getParameter("block");
		String flat_no=request.getParameter("flat_no");
		int totalLightUnit=Integer.parseInt(request.getParameter("luc"));
		int perLightUnitCharge=Integer.parseInt(request.getParameter("ppuoe"));
		int totalLightUnitCharges=Integer.parseInt(request.getParameter("electCharge"));
		double maintainenceCharge=Double.parseDouble(request.getParameter("maitainaceCharge"));
		double totalBill=totalLightUnitCharges+maintainenceCharge;
		
		try {
			int generateBill=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblbills(bill_id,block,flat_no,light_unit_consumed,price_per_unit,total_unit_charges,maintainence_charge,final_bill_total)values('"+billId+"','"+block+"','"+flat_no+"','"+totalLightUnit+"','"+perLightUnitCharge+"','"+totalLightUnitCharges+"','"+maintainenceCharge+"','"+totalBill+"')");
			if(generateBill>0) {
				response.sendRedirect("admin-manage-bills.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
