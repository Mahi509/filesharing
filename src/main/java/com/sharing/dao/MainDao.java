package com.sharing.dao;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sharing.model.User;

@Repository
@Transactional
public class MainDao {

	@Resource(name="sessionFactory")
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
}
