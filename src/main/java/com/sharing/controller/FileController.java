package com.sharing.controller;

import java.awt.Desktop;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sharing.service.FileService;

@Controller("fileController")
public class FileController {

	@Autowired
	private FileService fileService;
	
	//Downloading a file 
	@RequestMapping(value = "/downloadfile", method = RequestMethod.GET)
	public void download(@RequestParam("name")String fileName,HttpServletResponse response) throws IOException {
		
		
		File file = new File("/home/webwerks/apache-tomcat-7.0.39/webapps/files/"+fileName);
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
	public void deleteFile(@RequestParam("id")Integer fileId,HttpSession session)
	{
		System.out.println("i m inside delete");
		fileService.deleteFile(fileId,(Integer) session.getAttribute("userId"));
	}
	
	@RequestMapping(value="/editFile",method=RequestMethod.GET)
	public void edit(@RequestParam("name")String fileName) throws IOException, InterruptedException
	{
		/*ProcessBuilder pb = new ProcessBuilder("gedit","/home/webwerks/apache-tomcat-7.0.39/webapps/files/"+fileName);
	    pb.redirectOutput(Redirect.INHERIT);

	    Process p = pb.start();
	    p.waitFor();

	    //This will print console logs of your process
	    InputStream is = null;
	    try {
	        is = p.getInputStream();
	        System.out.println(" available "+is.available());
	        int in = -1;

	        while ((in = is.read()) != -1) {
	            System.out.print((char) in);
	        }

	    } finally {
	        is.close();
	    }	*/
		
		//File file=new File("/home/webwerks/apache-tomcat-7.0.39/webapps/files/"+fileName);
		/*Process process = Runtime.getRuntime().exec(fileName,null,file);
		 */
		/*ProcessBuilder pb = new ProcessBuilder("gedit","/home/webwerks/apache-tomcat-7.0.39/webapps/files/"+fileName);
		
		Process p = pb.start();
	    p.waitFor();

	    //This will print console logs of your process
	    
	    InputStream is = null;
	    try {
	        is = p.getInputStream();
	        int in = -1;

	        while ((in = is.read()) != -1) {
	            System.out.print((char) in);
	        }

	    } finally {
	        is.close();
	    }*/
		try{
		Runtime runtime = Runtime.getRuntime();
		Process process = runtime.exec("gedit /home/webwerks/apache-tomcat-7.0.39/webapps/files/"+fileName);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	
	}
	
	
	
}
