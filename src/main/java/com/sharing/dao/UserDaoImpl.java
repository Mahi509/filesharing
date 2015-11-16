package com.sharing.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.sharing.model.User;
@Repository
public class UserDaoImpl implements UserDao{
	@Resource
	private SessionFactory sessionFactory;
	
	

	public void save(User user) {
		  sessionFactory.getCurrentSession().save(user);
		
		
	}

}
