package com.sharing.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sharing.model.DeleteFiles;
import com.sharing.model.Files;
import com.sharing.model.User;
import com.sharing.model.UserFiles;

@Transactional
@Repository("fileDao")
public class FileDao {

	@Autowired
	private SessionFactory sessionFactory;

	
	public void deleteFile(Integer fileId,Integer userId)
	{
		Session session=sessionFactory.getCurrentSession();
		UserFiles file=(UserFiles)session.get(UserFiles.class,fileId);
		addToRestore(file);
		session.delete(file);
		User user = (User) session.get(User.class, userId);
		user.getFiles().remove(file);
		System.out.println("Successfully Deleted ");
	}
	
	public void restoreFile(Integer fileId,Integer userId)
	{
		Session session=sessionFactory.getCurrentSession();
		DeleteFiles file=(DeleteFiles)session.get(DeleteFiles.class,fileId);
		addToUserFiles(file);
		session.delete(file);
		User user = (User) session.get(User.class, userId);
		user.getDeleteFiles().remove(file);
		System.out.println("Successfully Deleted from trash");
	}
	
	
	public void addToRestore(UserFiles file){
		Session session=sessionFactory.getCurrentSession();
		DeleteFiles files = new DeleteFiles();
		files.setFileId(file.getFileId());
		files.setFileName(file.getFileName());
		files.setFileby(file.getFileby());
		files.setFiledate(file.getFiledate());
		files.setFilesize(file.getFilesize());
		files.setUser(file.getUser());
		session.save(files);
		
	}
	
	public void addToUserFiles(DeleteFiles file){
		Session session=sessionFactory.getCurrentSession();
		UserFiles files = new UserFiles();
		files.setFileId(file.getFileId());
		files.setFileName(file.getFileName());
		files.setFileby(file.getFileby());
		files.setFiledate(file.getFiledate());
		files.setFilesize(file.getFilesize());
		files.setUser(file.getUser());
		session.save(files);
		
	}
	
	public void deleteforever(Integer fileId,Integer userId)
	{
		Session session=sessionFactory.getCurrentSession();
		DeleteFiles file=(DeleteFiles)session.get(DeleteFiles.class,fileId);
		Files files=(Files)session.get(Files.class,fileId);
		//session.delete(files);
		session.delete(file);
		User user = (User) session.get(User.class, userId);
		user.getDeleteFiles().remove(file);
		System.out.println("Successfully Deleted from trash forever");
	}
	
	public void deletetrash(Integer fileId,Integer userId)
	{
		Session session=sessionFactory.getCurrentSession();
		DeleteFiles file=(DeleteFiles)session.get(DeleteFiles.class,fileId);
		session.delete(file);
		User user = (User) session.get(User.class, userId);
		user.getDeleteFiles().remove(file);
		System.out.println("Successfully Deleted from trash");
	}

	
}
