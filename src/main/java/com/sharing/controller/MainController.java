package com.sharing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.sharing.*;

import com.sharing.model.Files;
import com.sharing.service.MainService;

@Controller("mainController")
public class MainController {
	
	@Autowired
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

	@RequestMapping(value="/main/glymph",method=RequestMethod.GET)
	public String getAllFiles(@RequestParam("id")Integer id,Model model)
	{
		List<Files> files=mainService.getAllFiles();
		
		model.addAttribute("allFiles",files);
		
		return "home2";
		
	}
	
}