package com.sharing.validator;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;  
import org.springframework.validation.Validator;  

import com.sharing.model.UploadedFile;
  
@Service
public class FileValidator implements Validator {  
  
 public void validate(Object uploadedFile, Errors errors) {  
  
  UploadedFile file = (UploadedFile) uploadedFile;  
  
  System.out.println("error in file");
  
  if (file.getFile().getSize() == 0) {  
	  System.out.println("error in file");
   errors.rejectValue("file", "uploadForm.salectFile",  
     "Please select a file!");  
  }  
  
  System.out.println("exit error in file");
  
 }

public boolean supports(Class<?> arg0) {
	// TODO Auto-generated method stub
	return false;
}  
  
}  