package com.sharing.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sharing.model.DeleteFiles;
import com.sharing.model.Files;
import com.sharing.model.User;
import com.sharing.model.UserFiles;

@Repository("mainDao")
@Transactional
public class MainDao {

	@Autowired
	private SessionFactory sessionFactory;

	public boolean authenticate(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(User.class)
				.add(Restrictions.like("userName", username))
				.add(Restrictions.like("password", password));

		Object userValue = criteria.uniqueResult();

		boolean flag = false;

		if (userValue != null) {
			flag = true;
		}

		return flag;

	}

	@SuppressWarnings("unchecked")
	public List<Files> getAllFiles() {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Files.class);
		List<Files> files = criteria.list();
		System.out.println(" File Size " + files.size());
		return files;
	}

	
	
	public void setFilesUpload(String fileName,double size,String currentDate,Integer userId){

		Session session = sessionFactory.getCurrentSession();
		User user=(User) session.get(User.class,userId);
		
		Files files=new Files();
		files.setFileName(fileName);
		files.setFilesize(size);
		files.setFiledate(currentDate);
		files.setFileby(user.getUserName());
		session.save(files);
		
		UserFiles file = new UserFiles();
		file.setFileName(fileName);
		file.setFilesize(size);
		file.setFiledate(currentDate);
		file.setFileby(user.getUserName());
		user.getFiles().add(file);
		session.save(file);

	}

	public Files getFileName(Integer fileId) {
		Session session = sessionFactory.getCurrentSession();
		Files file = (Files) session.get(Files.class, fileId);

		return file;
	}
	
	public User getUserName(String name)
	{
		Session session=sessionFactory.getCurrentSession();
		Criteria criteria=session.createCriteria(User.class).
				add(Restrictions.like("userName",name));
		Object user=criteria.uniqueResult();
		
		return (User) user; 
	}
	
	public List<UserFiles> getUserFiles(Integer userId)
	{
		Session session = sessionFactory.getCurrentSession();
			
		Query query = session.createQuery("from User as u where u.userId="
				+ userId);
		
		User user = (User) query.uniqueResult();
		return new ArrayList<UserFiles>(user.getFiles());
		
	}
	
	
	//data from Trash table
	public List<DeleteFiles> getDeletedFiles(Integer userId)
	{
		Session session = sessionFactory.getCurrentSession();
			
		Query query = session.createQuery("from User as u where u.userId="
				+ userId);
		
		User user = (User) query.uniqueResult();
		return new ArrayList<DeleteFiles>(user.getDeleteFiles());
		
	}
	
	
	
	@SuppressWarnings("unchecked")
	public List<Files> getHomeSearchFiles(String search){
		
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria=session.createCriteria(Files.class).
				add(Restrictions.like("fileName",search+"%", MatchMode.ANYWHERE));
	
		System.out.println("Entering search Dao");
		
		return criteria.list();
	}

}
