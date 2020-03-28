package com.framework.jpa;

import javax.persistence.*;

@Entity
@Table(name="users")
public class UsersEntity {
	@Id
	@Column(name="userid")
	String uid;
	@Column(name="password")
	String pwd;
	@Column(name="first_name")
	String fname;
	@Column(name="address")
	String address;

	public UsersEntity(){}

	public UsersEntity(String uid) {
		this.uid = uid;
	}
	
	public UsersEntity(String uid, String pwd, String fname, String address) {
		this.uid = uid;
		this.pwd = pwd;
		this.fname = fname;
		this.address = address;
	}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

}
