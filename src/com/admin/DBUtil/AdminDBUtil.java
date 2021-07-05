package com.admin.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.customer.DBConnect;

public class AdminDBUtil {
	private static boolean isSuccess; 
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	public static boolean  adminvalidation(String email, String password)
	{
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from admin where email = '"+ email + "'and adminpassword = '" + password+"'";
			
			 rs = stmt.executeQuery(sql);
			 
			 if(rs.next()) {
				 isSuccess = true;
			 }else {
				 isSuccess = false;
			 }
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	
		
	}
	

}
