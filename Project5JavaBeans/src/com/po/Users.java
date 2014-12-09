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
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
