package com.sharing.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sharing.dao.UserDao;
import com.sharing.model.User;
@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	

	public void save(User user1) {
		
		userDao.save(user1);
		
		
	}

}
