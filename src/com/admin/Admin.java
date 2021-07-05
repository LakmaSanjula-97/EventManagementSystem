package com.admin;

public class Admin {
	
	private int adminid;
    private String email;
    private String phone;
    private String adminpassword;
    
    
	public Admin(int adminid, String email, String phone, String adminpassword) {
		super();
		this.adminid = adminid;
		this.email = email;
		this.phone = phone;
		this.adminpassword = adminpassword;
	}


	public int getAdminid() {
		return adminid;
	}


	public String getEmail() {
		return email;
	}


	public String getPhone() {
		return phone;
	}


	public String getAdminpassword() {
		return adminpassword;
	}
	
	

}
