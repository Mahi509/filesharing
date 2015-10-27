package com.sharing.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sharing.model.UploadedFile;
import com.sharing.validator.FileValidator;

@Controller
public class UploadController {

	@Autowired
	FileValidator fileValidator;

	@RequestMapping("/fileUploadForm")
	public ModelAndView getUploadForm(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult result) {
		return new ModelAndView("uploadForm");
	}

	@SuppressWarnings("resource")
	@RequestMapping("/fileUpload")
	public ModelAndView fileUploaded(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult result) {

		InputStream inputStream = null;
		OutputStream outputStream = null;

		MultipartFile file = uploadedFile.getFile();

		String fileName = file.getOriginalFilename();

		fileValidator.validate(uploadedFile, result);

		System.out.println(fileName);
		if (result.hasErrors()) {
			System.out.println("entering if block");
			return new ModelAndView("uploadForm");

		}

		try {
			inputStream = file.getInputStream();
			System.out.println("entering try block");

			File newFile = new File("/home/webwerks/files/" + fileName);
			if (!newFile.exists()) {
				newFile.createNewFile();
			}
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];

			while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
				System.out.println("123");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ModelAndView("showFile", "message", fileName);
	}

}