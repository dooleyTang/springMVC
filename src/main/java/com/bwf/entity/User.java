package com.bwf.entity;

public class User {
	private Integer userId;
	private String username;
	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + "]";
	}
	public User() {
		super();
	}
	public User(Integer userId, String username) {
		super();
		this.userId = userId;
		this.username = username;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}
