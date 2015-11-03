package com.sharing.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sharing.dao.MainDao;
import com.sharing.model.Files;

@Service("mainService")
public class MainService {

	@Autowired
	private MainDao mainDao;
	
	public boolean authenticate(String username,String password)
	{
		return (boolean)mainDao.authenticate(username, password);
	}
	
	public List<Files> getAllFiles()
	{
		return mainDao.getAllFiles();
	}

	
	public void setFilesUpload(String fileName,double fileSize,String currentDate, String username){
		
		mainDao.setFilesUpload(fileName, fileSize, currentDate,username);
		
	}
	
	

	public Files getFileName(Integer name) {
		Files fileObject=mainDao.getFileName(name);
		return fileObject;
	}

	
	public String checkSession(String username){
		
		if(username == null){
		
			System.out.println("user name is null");
			
			return "/detailsPage";
		
		}else
		
		return username;
		
		
	}
	
}
