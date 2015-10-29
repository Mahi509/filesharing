package com.sharing.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Files")
public class Files {

	@Id
	@Column(name="fileId")
	@GeneratedValue
	private Integer fileId;

	@Column(name="fileName")
	private String fileName;

	@Column(name="fileby")
	private String fileby;

	@Column(name="filedate")
	private String filedate;

	@Column(name="filesize")
	private String filesize;
	
	public String getFilesize() {
		return filesize;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
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

	

}
