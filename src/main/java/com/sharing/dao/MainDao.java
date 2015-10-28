package com.sharing.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sharing.model.Files;
import com.sharing.model.User;

@Repository("mainDao")
@Transactional
public class MainDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean authenticate(String username,String password)
	{
		Session session=sessionFactory.getCurrentSession();
		Criteria criteria=session.createCriteria(User.class).
				add(Restrictions.like("userName",username)).add(Restrictions.like("password",password));
			

		Object userValue=criteria.uniqueResult();
		
		boolean flag=false;
		
		if(userValue!=null)
		{
			flag=true;
		}
		
		return flag;
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Files> getAllFiles()
	{
		Session session=sessionFactory.getCurrentSession();
		Criteria criteria=session.createCriteria(Files.class);
		List<Files> files=criteria.list();
		System.out.println(" File Size "+files.size());
		return files;
	}
}
