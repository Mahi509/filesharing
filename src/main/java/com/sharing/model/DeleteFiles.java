package com.sharing.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;

@Entity(name="DeleteFiles")
public class DeleteFiles {


	@Id
	@Column(name = "fileId")
	@GeneratedValue
	private Integer fileId;

	private String fileName;

	private String fileby;

	private String filedate;

	private double filesize;


	@ManyToOne
	@JoinTable(name = "DeletedFiles", joinColumns = @JoinColumn(name = "fileId"), 
	inverseJoinColumns = @JoinColumn(name = "userId"))
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}


	public Integer getFileId() {
		return fileId;
	}

	public void setFileId(Integer fileId) {
		this.fileId = fileId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileby() {
		return fileby;
	}

	public void setFileby(String fileby) {
		this.fileby = fileby;
	}

	public String getFiledate() {
		return filedate;
	}

	public void setFiledate(String filedate) {
		this.filedate = filedate;
	}


	public double getFilesize() {
		return filesize;
	}

	public void setFilesize(double filesize) {
		this.filesize = filesize;
	}

	

	
}

