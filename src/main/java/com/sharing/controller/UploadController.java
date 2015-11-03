package com.sharing.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView getUploadForm(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult result) {
		return new ModelAndView("uploadForm");
	}

	@SuppressWarnings("resource")
	@RequestMapping("/fileUpload")
	public String fileUploaded(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult result,HttpSession session, HttpServletRequest request, Model model) {
		
		
			session = request.getSession();
		String user = (String) session.getAttribute("user");
		
		System.out.println(user);
			
		if(user!=null){
		
		//String username = mainService.checkSession(user);

		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		
		String currentDate = dateFormat.format(date);
		
		InputStream inputStream = null;
		OutputStream outputStream = null;

		MultipartFile file = uploadedFile.getFile();
		
		double fileSize = ((file.getSize())/1048576);
		
	
		
		fileValidator.validate(uploadedFile, result);
		
		String fileName = file.getOriginalFilename();
		
		mainService.setFilesUpload(fileName, fileSize, currentDate, user);
		

		System.out.println(fileName);
		if (result.hasErrors()) {
			//System.out.println("entering if block");
			return ("uploadForm");

			}

		try {
			inputStream = file.getInputStream();
		//	System.out.println("entering try block");

			File newFile = new File("/home/webwerks/files/" + fileName);
			if (!newFile.exists()) {
				newFile.createNewFile();
			}
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];

			while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
				/*System.out.println("123");*/
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ("showFile");
	}
	else{
		
		return "home";
	}
		
	}

}