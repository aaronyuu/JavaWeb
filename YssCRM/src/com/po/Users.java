package com.po;

public class Users {
	
	private String username;
	private String password;
	
	public boolean isLogin() {
		if (username.equals("admin") && password.equals("111111"))
			
			return true;
		else
			return false;

	}
	
	
	public String getUsername() {
		if (isLogin()) {
			return username;
		}else{
			return null;
		}
		
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		if (isLogin()) {
			return password;
		}else{
			return null;
		}
		

	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
