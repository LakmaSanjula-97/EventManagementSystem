package com.customer;

public class Customer {
	
	private int id;
    private String firstname;
    private String lastname;
    private String bdate;
    private String phone;
    private String email;
    private String accno;
    private String userName;
    private String password;
    
    
    
	public Customer(int id, String firstname, String lastname, String bdate, String phone, String email, String accno,
			String userName, String password) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.bdate = bdate;
		this.phone = phone;
		this.email = email;
		this.accno = accno;
		this.userName = userName;
		this.password = password;
			
	}



	public int getId() {
		return id;
	}

	public String getFirstname() {
		return firstname;
	}


	public String getLastname() {
		return lastname;
	}

	public String getBdate() {
		return bdate;
	}


	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getAccno() {
		return accno;
	}

	public String getUserName() {
		return userName;
	}


	public String getPassword() {
		return password;
	}


}
