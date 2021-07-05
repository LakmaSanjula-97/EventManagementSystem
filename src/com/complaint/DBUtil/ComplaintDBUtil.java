package com.complaint.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.Customer;
import com.customer.DBConnect;
import com.mysql.jdbc.PreparedStatement;
import com.complaint.*;

public class ComplaintDBUtil {
	
	private static boolean isSuccess; 
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	 public static boolean insertcomplaints(String email, String type, String des)
		{
			
			boolean isSuccess = false;
			
				try {
					
					con = DBConnect.getConnection();
		    		stmt = con.createStatement();
					
					String sql = "insert into complaints values (0,'"+email+"','"+type+"','"+des+"')";
					
					int rs = stmt.executeUpdate(sql);
					
					if(rs > 0) {
						isSuccess = true;
					}
					
					else {
						
						isSuccess = false;
					}
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
		}
	 
	

}
