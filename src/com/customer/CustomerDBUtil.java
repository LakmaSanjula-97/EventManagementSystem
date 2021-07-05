package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.admin.Admin;

public class CustomerDBUtil {
	
	
	private static boolean isSuccess; 
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean  customervalidation(String userName, String password)
	{
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from customer where username = '"+ userName + "'and password = '" + password+"'";
			
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
	
		
	

	public static List<Customer> getcustomer(String userName, String password)
	{
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		
		try { 
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username = '"+ userName + "'and password = '" + password+"'";
			
			 rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String bdate = rs.getString(4);
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String accno = rs.getString(7);
				String userU = rs.getString(8);
				String passU = rs.getString(9);
				
				Customer c = new Customer (id, firstname,lastname,bdate,phone,email,accno, userU, passU );
			
				cus.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return cus;
	}
	//register
	 public static boolean insertcustomer(String firstname,String lastname, String bdate, String phone,String email,String accno, String username, String password) {
	    	
	    	boolean isSuccess = false;
	    
	    	
	    	try {
	    	
	    		con = DBConnect.getConnection();
				stmt = con.createStatement();
				
	    	    String sql = "insert into customer values (0,'"+firstname+"','"+lastname+"','"+bdate+"','"+phone+"','"+email+"','"+accno+"','"+username+"','"+password+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	    
	 
	 public static boolean updatecustomer(String id, String firstname,String lastname, String bdate, String phone, String email, String accno, String username,String password) {
		 
		 
		 
		 
		 try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update customer set firstname='"+firstname+"',lastname='"+lastname+"',bdate='"+bdate+"',phone='"+phone+"',email='"+email+"',accno='"+accno+"',username='"+username+"',password='"+password+"' where id='"+id+"'";
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
	public static List<Customer> getCustomerDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<Customer> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from customer where id='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
					String firstname = rs.getString(2);
					String lastname = rs.getString(3);
					String bdate = rs.getString(4);
					String phone = rs.getString(5);
					String email = rs.getString(6);
					String accno = rs.getString(7);
					String userU = rs.getString(8);
					String passU = rs.getString(9);
					
					Customer c = new Customer (id, firstname,lastname,bdate,phone,email,accno, userU, passU );
				
					cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    }
	
	 public static boolean deleteCustomer(String id) {
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from customer where id='"+convId+"'";
	    		int r = stmt.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	 
	 //forget password
	 public static boolean resetpassword(String email, String newpassword) {
		 

		 String pass="";
		 String email1="";
		 
		 try{
			 
			 con = DBConnect.getConnection();
	    	 stmt = con.createStatement();
			 
			 ResultSet rs=stmt.executeQuery("select * from customer where email='"+email+"'");
			 while(rs.next()){
			 email1=rs.getString(6);
			 pass=rs.getString(9);
			 } 
			 if(email.equals(email)){
			 Statement st1=con.createStatement();
			 int i=st1.executeUpdate("update customer set password='"+newpassword+"' where email='"+email+"'");
			 
			 if (i > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
			 
			 st1.close();
			 con.close();
			 }
			 else{
			 
			 }
			 
			 }
			 catch(Exception e){
				 e.printStackTrace();
			 }
		 
		 return isSuccess;
		 
		 
	    }
	
		 
	 
	    
	
	
	 
	 
}
