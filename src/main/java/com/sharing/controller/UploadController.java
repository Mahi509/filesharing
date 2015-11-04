package com.sharing.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sharing.model.Files;
import com.sharing.model.UploadedFile;
import com.sharing.validator.FileValidator;
import com.sharing.service.MainService;


@Controller
public class UploadController {

	@Autowired
	FileValidator fileValidator;
	
	@Autowired
	MainService mainService;
	

	@RequestMapping("/fileUploadForm")
	public String getUploadForm(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult result) {
		
		
		
		return "uploadForm";
	}

	@SuppressWarnings("resource")
	@RequestMapping("/fileUpload")
	public String fileUploaded(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult result,HttpSession session,Model model) {

		 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		
		String currentDate = dateFormat.format(date);
		
		InputStream inputStream = null;
		OutputStream outputStream = null;

		MultipartFile file = uploadedFile.getFile();
		

		double fileSize = ((file.getSize())/1048576);
		
		
		fileValidator.validate(uploadedFile, result);
		
		String fileName = file.getOriginalFilename();
	
		
			 if(session.getAttribute("userName")!=null)
			 {
				 System.out.println(" USER NAME "+session.getAttribute("userName"));
				Integer userId=(Integer) session.getAttribute("userId");
				mainService.setFilesUpload(fileName, fileSize, currentDate,userId);
		
		
	
		if (result.hasErrors()) {
			
			return "uploadForm";

			}

		try {
			inputStream = file.getInputStream();
		
			File newFile = new File("/home/webwerks/apache-tomcat-7.0.39/webapps/files/" + fileName);
			
			if (!newFile.exists()) {
				newFile.createNewFile();
			}
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];
			
			

			while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
	
			}
			model.addAttribute("message", fileName);
			return "redirect:/main/userfiledetails";
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}else
		{
			model.addAttribute("message", " Sorry you need to Login First ");
		}
		
		
		return "showFile";
	
		
	}
}