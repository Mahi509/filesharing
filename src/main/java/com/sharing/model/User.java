package com.sharing.model;


import javax.persistence.Column;

import java.util.List;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "User")
public class User {

	@Id
	@GeneratedValue
	@Column(name="userId")
	private Integer userId;
@Column(name="firstName")
	private String firstName1;
@Column(name="lastName")
	private String lastName;
@Column(name="userName")
	private String userName;
@Column(name="password")
	private String password;
@Column(name="confirmPassword")
	private String confirmPassword;
@Column(name="emailId")
	private String emailId;

@OneToMany
@JoinTable
		(
		name="UserFiles",
		joinColumns=@JoinColumn(name="userId"),
		inverseJoinColumns=@JoinColumn(name="fileId")
		)
private List<Files> files;

public List<Files> getFiles() {
	return files;
}

public void setFiles(List<Files> files) {
	this.files = files;}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getFirstName() {
		return firstName1;
	}

	public void setFirstName(String firstName) {
		this.firstName1 = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}
