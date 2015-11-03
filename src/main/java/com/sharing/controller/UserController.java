package com.sharing.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sharing.model.User;
import com.sharing.service.UserService;

@Controller
@RequestMapping(value="usermain")
public class UserController {	
	@Autowired
	private UserService userService;
	final static Logger logger = Logger.getLogger(UserController.class);
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String addUser(@ModelAttribute("userData")User user1,Model model){
		
		userService.save(user1);
		
		return "home";
	}
	
	
	

}
