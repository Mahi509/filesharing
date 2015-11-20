package com.sharing.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sharing.dao.FileDao;
import com.sharing.model.UserFiles;

@Service
public class FileService {
	
	@Autowired
	private FileDao fileDao;
	
	public void deleteFile(Integer fileId,Integer userId)
	{
		fileDao.deleteFile(fileId,userId);
	}
	
	public void deleteforever(Integer fileId,Integer userId)
	{
		fileDao.deleteforever(fileId,userId);
	}
	
	
	public void restoreFile(Integer fileId,Integer userId)
	{
		fileDao.restoreFile(fileId,userId);
	}
	
	public void deletetrash(Integer fileId,Integer userId)
	{
		fileDao.deletetrash(fileId,userId);
	}
	
	public void renameFile(Integer fileId,Integer userId,String fileName)
	{
		fileDao.renameFile(fileId, userId, fileName);
	}
	
	public UserFiles getFile(Integer fileId)
	{
		return fileDao.getFile(fileId);
	}
	
}
