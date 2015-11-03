package com.sharing.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="User")
public class User {
@Id
@GeneratedValue
private Integer userId;

private String userName;

private String password;

private String emailId;

private String firstName;

private String lastName;

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
	this.files = files;
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
	return firstName;
}

public void setFirstName(String firstName) {
	this.firstName = firstName;
}

public String getLastName() {
	return lastName;
}

public void setLastName(String lastName) {
	this.lastName = lastName;
}

}
