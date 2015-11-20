package com.sharing.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sharing.dao.FileDao;
import com.sharing.dao.MainDao;
import com.sharing.model.Files;

@Service
public class FileService {
	
	@Autowired
	private FileDao fileDao;
	
	@Autowired 
	private MainDao mainDao;
	
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
	
	
	public void addToMyAccount(Integer file, Integer userId, String userName) {

		fileDao.addToMyAccount(file, userId);
		Files files = mainDao.getFileName(file);

		InputStream inStream = null;
		OutputStream outStream = null;

		try {

			File afile = new File(
					"/home/webwerks/Prakash/apache-tomcat-7.0.62/webapps/files/"
							+ files.getFileName());
			File bfile = new File(
					"/home/webwerks/Prakash/apache-tomcat-7.0.62/webapps/files/"
							+ userName + "/" + files.getFileName());

			inStream = new FileInputStream(afile);
			outStream = new FileOutputStream(bfile);

			byte[] buffer = new byte[1024];

			int length;
			// copy the file content in bytes
			while ((length = inStream.read(buffer)) > 0) {

				outStream.write(buffer, 0, length);

			}

			inStream.close();
			outStream.close();

			System.out.println("File is copied successful!");

		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
}
