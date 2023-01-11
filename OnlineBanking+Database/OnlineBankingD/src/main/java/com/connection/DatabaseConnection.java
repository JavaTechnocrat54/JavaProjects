package com.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class DatabaseConnection {

	public static Connection connection;

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebanking", "root","123456789");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (connection);
	}

	public static void CloseConnection() {
		if (connection != null) {
			try {
				connection.close();
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
	}

	public static ResultSet getResultFromSqlQuery(String SqlQueryString) {
		ResultSet rs = null;
		try {
			if (connection == null) {
				getConnection();
			}
			rs = connection.createStatement().executeQuery(SqlQueryString);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return rs;
	}

	public static int insertUpdateFromSqlQuery(String SqlQueryString) {
		int i = 2;
		try {
			if (connection == null) {
				getConnection();
			}
			i = connection.createStatement().executeUpdate(SqlQueryString);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return i;
	}
	
	public static long generateCustomerId() {
		Random r=new Random();
        String s="0123456789";
        StringBuffer sb= new StringBuffer();
        for(int i=1;i<=7;i++)
        {
            sb.append(s.charAt(r.nextInt(s.length())));
        }
        String acc1=4687+sb.toString();
        
        long acc=Long.parseLong(acc1);
		return acc;
	}
	
	public static int generateAdminId() {
		int aid = 0;
		Random random=new Random();
		aid = random.nextInt((9999 - 100) + 1) + 10;
		System.out.println("Admin Id " + aid);
		return aid;
	}
	
	public static int generateCropId() {
		int cropId = 0;
		Random random=new Random();
		cropId = random.nextInt((9999 - 100) + 1) + 10;
		System.out.println("Crop Id " + cropId);
		return cropId;
	}
	
	public static int generatePesticideId() {
		int psticideId = 0;
		Random random=new Random();
		psticideId = random.nextInt((9999 - 100) + 1) + 10;
		System.out.println("Pesticide Id " + psticideId);
		return psticideId;
	}
	
	public static int generateInsecticideId() {
		int insecticidesId = 0;
		Random random=new Random();
		insecticidesId = random.nextInt((9999 - 100) + 1) + 10;
		System.out.println("Insecticides Id " + insecticidesId);
		return insecticidesId;
	}
	
	public static int generateEquipmentId() {
		int equipmentId = 0;
		Random random=new Random();
		equipmentId = random.nextInt((9999 - 100) + 1) + 10;
		System.out.println("Equipment Id " + equipmentId);
		return equipmentId;
	}
	
	public static int generateSellId() {
		int sellId = 0;
		Random random=new Random();
		sellId = random.nextInt((9999 - 100) + 1) + 10;
		System.out.println("Sell Id " + sellId);
		return sellId;
	}
	public static String generatePasswordString() {
		Random random=new Random();
		int length = 7 + (Math.abs(random.nextInt()) % 3);

		StringBuffer captchaStringBuffer = new StringBuffer();
		for (int i = 0; i < length; i++) {
			int baseCharNumber = Math.abs(random.nextInt()) % 62;
			int charNumber = 0;
			if (baseCharNumber < 26) {
				charNumber = 65 + baseCharNumber;
			}
			else if (baseCharNumber < 52){
				charNumber = 97 + (baseCharNumber - 26);
			}
			else {
				charNumber = 48 + (baseCharNumber - 52);
			}
			captchaStringBuffer.append((char)charNumber);
		}

		return captchaStringBuffer.toString();
	}
	
}
