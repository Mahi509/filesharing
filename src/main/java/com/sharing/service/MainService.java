package com.sharing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sharing.dao.MainDao;
import com.sharing.model.Files;
import com.sharing.model.User;

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

	

	public void setFilesUpload(String fileName,double fileSize,String currentDate,Integer userId){
		
		mainDao.setFilesUpload(fileName, fileSize, currentDate,userId);

	}
	

	public Files getFileName(Integer name) {
		Files fileObject=mainDao.getFileName(name);
		return fileObject;
	}


	public User getUserName(String name)
	{
		return mainDao.getUserName(name);
	}
	
	public List<Files> getUserFiles(Integer userId)
	{
		return mainDao.getUserFiles(userId);
		
	}
	
	public List<Files> getHomeSearchFiles(String search){
		return mainDao.getHomeSearchFiles(search);
	}
	
}
