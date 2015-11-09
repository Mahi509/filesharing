package com.sharing.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sharing.model.Files;
import com.sharing.model.User;
import com.sharing.service.MainService;

@Controller("mainController")
public class MainController {

	@Autowired
	private MainService mainService;

	List<Files> grid = new ArrayList<Files>();

	@RequestMapping(value = { "/", "/main/login" })
	public String home() {
		System.out.println("fgdf");
		return "home";
	}

	@RequestMapping(value = "/authenticate", method = RequestMethod.POST)
	public String authenticate(@RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session,
			HttpServletRequest request, Model model) {
		boolean flag = mainService.authenticate(username, password);

		if (flag) {
			System.out.println("TRUE");
			session.setAttribute("user", username);
			// session.removeAttribute("user");
			return "home2";

		} else {
			return "error";
		}

	}

	// Getting all files details
	@RequestMapping(value = "/main/glymph", method = RequestMethod.GET)
	public String getAllFiles(@RequestParam("id") String id, Model model) {
		List<Files> files = mainService.getAllFiles();

		model.addAttribute("allFiles", files);

		return "home2";

	}

	@RequestMapping(value = "/main/homeList", method = RequestMethod.GET)
	public String getAllFilesList(@RequestParam("id") String id, Model model) {

		model.addAttribute("allFiles", grid);

		return "homeList";

	}

	// Getting files as per extensions
	@RequestMapping(value = "/main/getByExtn", method = RequestMethod.GET)
	public String getFile(@RequestParam("id") String id, Model model) {
		grid.clear();

		List<Files> files = mainService.getAllFiles();

		List<Files> file2 = new ArrayList<Files>();
		for (Files file : files) {
			if (id.equalsIgnoreCase(".mp3")) {
				if (file.getFileName().endsWith(id)) {
					file2.add(file);

				}
			} else if (id.equalsIgnoreCase(".mp4")) {
				if (file.getFileName().endsWith(id)
						|| file.getFileName().endsWith(".mkv")
						|| file.getFileName().endsWith(".avi")
						|| file.getFileName().endsWith(".flv")
						|| file.getFileName().endsWith(".3gp")) {
					file2.add(file);

				}
			} else if (id.equalsIgnoreCase(".pdf")) {
				if (file.getFileName().endsWith(id)
						|| file.getFileName().endsWith(".html")
						|| file.getFileName().endsWith(".xls")
						|| file.getFileName().endsWith(".ppt")
						|| file.getFileName().endsWith(".doc")) {
					file2.add(file);

				}
			} else if (id.equalsIgnoreCase(".jpeg")) {
				if (file.getFileName().endsWith(id)
						|| file.getFileName().endsWith(".gif")
						|| file.getFileName().endsWith(".jpg")
						|| file.getFileName().endsWith(".png")) {
					file2.add(file);

				}
			}
		}

		for (Files f : file2) {
			grid.add(f);
		}
		model.addAttribute("allFiles", file2);

		return "homeList";

	}
//added user object by Mahi
	@RequestMapping(value = "/main/signup", method = RequestMethod.GET)
	public String signup(@ModelAttribute("userData")User user1) {
		return "signup";
	}

	@RequestMapping(value = "/main/homeGrid", method = RequestMethod.GET)
	public String getAllFilesGrid(@RequestParam("id") String id, Model model) {

		model.addAttribute("allFiles", grid);

		return "homeGrid2";

	}

	@RequestMapping(value = "/main/homeGridOne", method = RequestMethod.GET)
	public String getAllFilesHomeGrid(@RequestParam("id") String id, Model model) {

		List<Files> files = mainService.getAllFiles();

		model.addAttribute("allFiles", files);

		return "homeGrid";

	}

	@RequestMapping(value = "/detailsPage", method = RequestMethod.GET)
	public String detailsPage(@RequestParam("name") Integer name, Model model) {

		Files fileObject = mainService.getFileName(name);
		model.addAttribute("file", new Files());
		model.addAttribute("filename", fileObject);

		String[] test = (fileObject.getFileName()).split("\\.");
		System.out.println(fileObject.getFileName() + "--");
		System.out.println(test[0] + "--" + test[1]);
		model.addAttribute("ext", test[1]);

		return "detailsPage";
	}

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
	public String forgotpassword() {

		return "forgotPassword";
	}
	
	
	@RequestMapping(value = "/main/userContent", method = RequestMethod.GET)
	public String userContent() {

		return "userContent";
	}
	
	

	@RequestMapping(value = "main/checksession", method = RequestMethod.POST)
	public @ResponseBody String checkSession(HttpSession session) {
		System.out.println("SESSION INVALID");

		String user = (String) session.getAttribute("users");

		if (session.getAttribute("users") != null) {
			return "yes";
		}
		return "no";
	}

}