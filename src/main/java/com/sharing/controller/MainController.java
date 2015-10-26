package com.sharing.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sharing.service.MainService;

@Controller
public class MainController {
	
	@Resource(name="mainService")
	private MainService mainService;

	@RequestMapping(value="/")
	public String home()
	{
		System.out.println("in controller");
		return "home";
	}
	
	@RequestMapping(value="/authenticate",method=RequestMethod.POST)
	public String authenticate(@RequestParam("username")String username,@RequestParam("password")String password)
	{
		boolean flag=mainService.authenticate(username, password);
		
		if(flag)
		{
			System.out.println("TRUE");
			return "home2";
			 
		}else
		{
			return "error";
		}
	
			
	}

}