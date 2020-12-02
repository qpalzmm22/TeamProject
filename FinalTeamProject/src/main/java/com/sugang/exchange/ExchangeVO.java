package com.sugang.exchange;

public class ExchangeVO {
	private int rid;
	private String want;
	private String have;
	private String name;
	private String contact;
	private String email;
	private String message;
	private String password;
	private char exchanged;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getWant() {
		return want;
	}
	public void setWant(String want) {
		this.want = want;
	}
	public String getHave() {
		return have;
	}
	public void setHave(String have) {
		this.have = have;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public char getExchanged() {
		return exchanged;
	}
	public void setExchanged(char exchanged) {
		this.exchanged = exchanged;
	}
}
