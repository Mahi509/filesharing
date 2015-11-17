package com.sharing.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
		session.delete(file);
		User user=(User) session.get(User.class,userId);
		user.getFiles().remove(file);
		System.out.println("Successfully Deleted ");
	}
}
