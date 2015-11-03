package com.sharing.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import org.springframework.web.bind.annotation.ResponseBody;


import com.sharing.*;
import com.sharing.model.Files;
import com.sharing.model.User;
import com.sharing.service.MainService;

@Controller("mainController")
public class MainController {
	
	@Autowired
	private MainService mainService;

	@RequestMapping(value={"/","/main/login"})
	public String home()
	{
		System.out.println("fgdf");
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

	//Getting all files details
	@RequestMapping(value="/main/glymph",method=RequestMethod.GET)
	public String getAllFiles(@RequestParam("id")String id,Model model)
	{
		List<Files> files=mainService.getAllFiles();
		
		model.addAttribute("allFiles",files);
		
		return "home2";
		
	}
	
	//Getting files as per extensions
	@RequestMapping(value="/main/getByExtn",method=RequestMethod.GET)
	public String getFile(@RequestParam("id")String id,Model model)
	{
		List<Files> files=mainService.getAllFiles();
		
		List<Files> file2=new ArrayList<Files>();
		for(Files file:files)
		{
			if(id.equalsIgnoreCase(".mp3"))
			{
			if(file.getFileName().endsWith(id))
			{
				file2.add(file);
			}
			}else if(id.equalsIgnoreCase(".mp4"))
			{
				if(file.getFileName().endsWith(id)||file.getFileName().endsWith(".mkv")||file.getFileName().endsWith(".avi")
						||file.getFileName().endsWith(".flv")||file.getFileName().endsWith(".3gp"))
				{
					file2.add(file);
				}
			}else if(id.equalsIgnoreCase(".pdf"))
			{
				if(file.getFileName().endsWith(id)||file.getFileName().endsWith(".html")||file.getFileName().endsWith(".xls")
						||file.getFileName().endsWith(".ppt")||file.getFileName().endsWith(".doc"))
				{
					file2.add(file);
				}
			}else if(id.equalsIgnoreCase(".jpeg"))
			{
				if(file.getFileName().endsWith(id)||file.getFileName().endsWith(".gif")||file.getFileName().endsWith(".jpg")
						||file.getFileName().endsWith(".png"))
				{
					file2.add(file);
				}
			}
		}		
		
		model.addAttribute("allFiles",file2);
		
		return "home2";
	
}
	
	@RequestMapping(value="/main/signup",method=RequestMethod.GET)
	public String signup(Model model)
	{ model.addAttribute("userData", new User());
		return "signup";
	}
	


	
	@RequestMapping(value="/main/homeGrid",method=RequestMethod.GET)
	public String getAllFilesGrid(@RequestParam("id")Integer id,Model model)
	{
		List<Files> files=mainService.getAllFiles();
		
		model.addAttribute("allFiles",files);
		
		return "homeGrid2";
		
	}

	@RequestMapping(value="/detailsPage",method=RequestMethod.GET)
	public String detailsPage(@RequestParam("name")Integer name,Model model){
		
		Files fileObject=mainService.getFileName(name);
		model.addAttribute("file", new Files());
		model.addAttribute("filename", fileObject);
        
		String[] test=(fileObject.getFileName()).split("\\.");
		System.out.println(fileObject.getFileName()+"--");
		System.out.println(test[0]+"--"+test[1]);
		model.addAttribute("ext", test[1]);
        
		return "detailsPage";
	}
@RequestMapping(value="/forgotpassword",method=RequestMethod.GET)
public String forgotpassword(){
		
	return "forgotPassword";
}
	
	
@RequestMapping(value = "main/checksession", method = RequestMethod.POST)
public @ResponseBody String checkSession(HttpSession session) {
	System.out.println("SESSION INVALID");

	String user = (String) session.getAttribute("users");
	//System.out.println("In session is " + user);
	if (session.getAttribute("users") != null) {
		return "yes";
	}
	return "no";
}
	
	
}