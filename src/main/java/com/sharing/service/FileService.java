package com.sharing.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sharing.dao.FileDao;

@Service
public class FileService {
	
	@Autowired
	private FileDao fileDao;
	
	public void deleteFile(Integer fileId,Integer userId)
	{
		fileDao.deleteFile(fileId,userId);
	}
	
}
