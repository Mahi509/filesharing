package com.sharing.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.sharing.model.UploadedFile;
import com.sharing.validator.FileValidator;
import com.sharing.service.MainService;

@Controller
public class UploadController {

	@Autowired
	FileValidator fileValidator;

	@Autowired
	MainService mainService;

	static MultipartFile file;
	
	InputStream inputStream = null;
	 OutputStream outputStream = null;

	 OutputStream op=null;
	
	
	public UploadController() {
		// TODO Auto-generated constructor stub
	}
	
	public UploadController(MultipartFile file) {
		
		UploadController.file=file;
		
	}
	
	@RequestMapping("/fileUploadForm")
	public String getUploadForm(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult result) {

		return "uploadForm";
	}

	
	
	
	@RequestMapping(value={"/fileUpload","/main/fileUpload"})
	public String fileUploaded(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,

			BindingResult result,HttpSession session,Model model) throws IOException {

		
		MultipartFile file = uploadedFile.getFile();
		inputStream = file.getInputStream();
		
		UploadController up=new UploadController(file);
		
		fileValidator.validate(uploadedFile, result);
		String userName=(String) session.getAttribute("userName");
		
		if(userName!=null)
		{
			String fileName = file.getOriginalFilename();
		
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
			Date date = new Date();
			
			double fileSize = ((file.getSize()) / 1048576);
	
			
			String currentDate = dateFormat.format(date);
			Integer userId=(Integer) session.getAttribute("userId");
			mainService.setFilesUpload(fileName, fileSize, currentDate,userId);

			
			try {
				
				File f=new File("/home/webwerks/Prakash/apache-tomcat-7.0.62/webapps/files/",fileName);
				File newFile = new File(
						"/home/webwerks/Prakash/apache-tomcat-7.0.62/webapps/files/"+userName+"/");
				File myFile=new File(newFile,fileName);
				if (!newFile.exists()) 
				{
					
						newFile.mkdir();
						myFile.createNewFile();
						f.createNewFile();
				}
				outputStream = new FileOutputStream(myFile);
				op= new FileOutputStream(f);

				int read = 0;
				byte[] bytes = new byte[1024];
				
				

				while ((read = inputStream.read(bytes)) != -1) {
					outputStream.write(bytes, 0, read);
					op.write(bytes,0,read);

				}
				model.addAttribute("message", fileName);
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			return	"redirect:/main/userfiledetails";
	}
		return "showFile";
	}

	
	public void temp(Model model,HttpSession session) throws IOException
	{
		
		String fileName = file.getOriginalFilename();
		String user=(String) session.getAttribute("userName");
	
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		
		double fileSize = ((file.getSize()) / 1048576);
		
		String currentDate = dateFormat.format(date);
		
		
		
		if(user!=null)
			 {
				System.out.println(" USER NAME "+session.getAttribute("userName"));
				Integer userId=(Integer) session.getAttribute("userId");
				mainService.setFilesUpload(fileName, fileSize, currentDate,userId);

		/*if (result.hasErrors()) {

			return "uploadForm";

		}*/
		
		try {
			
			File f=new File("/home/webwerks/Prakash/apache-tomcat-7.0.62/webapps/files/",fileName);
			File newFile = new File(
					"/home/webwerks/Prakash/apache-tomcat-7.0.62/webapps/files/"+user+"/");
			File myFile=new File(newFile,fileName);
			if (!newFile.exists()) 
			{
				
					newFile.mkdir();
					myFile.createNewFile();
					f.createNewFile();
			}
			outputStream = new FileOutputStream(myFile);
			op= new FileOutputStream(f);

			int read = 0;
			byte[] bytes = new byte[1024];
			
			

			while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
				op.write(bytes,0,read);

			}
			model.addAttribute("message", fileName);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}else
		{
			model.addAttribute("message", " Sorry you need to Login First ");
		}
		
	}
	
}