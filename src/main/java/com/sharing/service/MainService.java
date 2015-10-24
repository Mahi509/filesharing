package com.sharing.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sharing.dao.MainDao;

@Service
public class MainService {

	@Autowired
	private MainDao mainDao;
	
	public boolean authenticate(String username,String password)
	{
		return (boolean)mainDao.authenticate(username, password);
	}
}
