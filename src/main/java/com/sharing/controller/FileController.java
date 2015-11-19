package com.sharing.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sharing.model.DeleteFiles;
import com.sharing.model.Files;
import com.sharing.model.UserFiles;
import com.sharing.service.FileService;
import com.sharing.service.MainService;

@Controller("fileController")
public class FileController {

	@Autowired
	private FileService fileService;
	
	@Autowired 
	private MainService mainService;
	
	//Downloading a file 
	@RequestMapping(value = "/downloadfile", method = RequestMethod.GET)
	public void download(@RequestParam("name")String fileName,HttpServletResponse response,
			HttpSession session) throws IOException {
		
		String userName=(String) session.getAttribute("userName");
		File file = new File("/home/webwerks/apache-tomcat-7.0.39/webapps/files/"+userName+"/"+fileName);
		InputStream is = new FileInputStream(file);

		// MIME type of the file
		response.setContentType("application/octet-stream");
		// Response header
		response.setHeader("Content-Disposition", "attachment; filename=\""
				+ file.getName() + "\"");
		// Read from the file and write into the response
		OutputStream os = response.getOutputStream();
		byte[] buffer = new byte[1024];
		int len;
		while ((len = is.read(buffer)) != -1) {
			os.write(buffer, 0, len);
		}
		os.flush();
		os.close();
		is.close();
	}
	
	@RequestMapping(value="/deletefile",method=RequestMethod.GET)
	public String deleteFile(@RequestParam("id")Integer fileId,HttpSession session,Model model)
	{
		System.out.println("i m inside delete");
		Integer userId=(Integer) session.getAttribute("userId");
		fileService.deleteFile(fileId,userId);
		
		List<UserFiles> file=mainService.getUserFiles(userId);
		
		model.addAttribute("files", file);
		
		return "userdetails";
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/editFile",method=RequestMethod.GET)
	public String edit(@RequestParam("name")String fileName,HttpSession session,Model model) throws IOException, InterruptedException
	{
		Integer userId=(Integer) session.getAttribute("userId");
		String userName=(String) session.getAttribute("userName");
		try
		{
		Runtime runtime = Runtime.getRuntime();
		Process process = runtime.exec("gedit /home/webwerks/apache-tomcat-7.0.39/webapps/files/"+userName+"/"+fileName);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		List<UserFiles> file=mainService.getUserFiles(userId);
		
		model.addAttribute("files", file);
		
		return "userdetails";
	
	}
	
	//Restore deleted files by user
	@RequestMapping(value="/restorefile",method=RequestMethod.GET)
	public String restoreFile(@RequestParam("id")Integer fileId,HttpSession session,Model model)
	{
		System.out.println("i m inside restorefiles");
		Integer userId=(Integer) session.getAttribute("userId");
		fileService.restoreFile(fileId,userId);
		
		List<UserFiles> file=mainService.getUserFiles(userId);
		
		model.addAttribute("files", file);
		
		return "userdetails";
	}
	
	//Delete for forever from Restore tables 
	@RequestMapping(value="/deleteforever",method=RequestMethod.GET)
	public String deleteForever(@RequestParam("id")Integer fileId,HttpSession session,Model model)
	{
		System.out.println("i m inside deleteforever");
		Integer userId=(Integer) session.getAttribute("userId");
		fileService.deleteforever(fileId,userId);
		
		List<UserFiles> file=mainService.getUserFiles(userId);
		
		model.addAttribute("files", file);
		
		return "trash";
	}
	
	//Delete from Restore tables 
		@RequestMapping(value="/deletetrash",method=RequestMethod.GET)
		public String deletetrash(@RequestParam("id")Integer fileId,HttpSession session,Model model)
		{
			System.out.println("i m inside deletetrash");
			Integer userId=(Integer) session.getAttribute("userId");
			fileService.deletetrash(fileId,userId);
			
			List<DeleteFiles> file=mainService.getUserDeletedFiles(userId);
			
			model.addAttribute("files", file);
			return "trash";
		}
	
	
}
