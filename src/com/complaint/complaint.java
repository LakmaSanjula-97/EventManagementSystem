package com.complaint;

public class complaint {
	
	private int comid;
	private String email;
	private String subject;
	private String des;
	
	
	public complaint(int comid, String email, String subject, String des) {
		
		this.comid = comid;
		this.email = email;
		this.subject = subject;
		this.des = des;
	}

	public int getComid() {
		return comid;
	}

	public String getEmail() {
		return email;
	}

	public String getSubject() {
		return subject;
	}


	public String getDes() {
		return des;
	}


}
