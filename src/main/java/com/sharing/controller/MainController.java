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
import com.sharing.model.DeleteFiles;
import com.sharing.model.Files;
import com.sharing.model.User;
import com.sharing.model.UserFiles;
import com.sharing.service.FileService;
import com.sharing.service.MainService;

@Controller("mainController")
public class MainController {

	@Autowired
	private MainService mainService;

	@Autowired
	private FileService fileService;
	
	@Autowired
	private FileController fileController;
	
	@Autowired
	private UploadController upload;

	List<Files> grid = new ArrayList<Files>();

	@RequestMapping(value = "/")
	public String home(HttpSession session, Model model) {
		System.out.println("in controller");
		session.invalidate();
		return "home";

	}

	@RequestMapping(value = "authenticate", method = RequestMethod.POST)
	public String authenticate(@RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session,
			HttpServletRequest request, Model model) {
		boolean flag = mainService.authenticate(username, password);

		if (flag) {
			User user = mainService.getUserName(username);
			System.out.println(" USER NAME " + user.getUserName());
			session.setAttribute("userName", user.getUserName());
			session.setAttribute("userId", user.getUserId());

			if ((String) session.getAttribute("userName") != null) {
				upload.temp(model, session);
				List<UserFiles> file = mainService
						.getUserFiles((Integer) session.getAttribute("userId"));
				model.addAttribute("files", file);

				return "userdetails";
			}

			return "home";

		} else {

			return "error";
		}

	}

	
	@RequestMapping(value = "/authenticateuser", method = RequestMethod.POST)
	public String authenticate2(@RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session,
			HttpServletRequest request, Model model) {
		boolean flag = mainService.authenticate(username, password);

		if (flag) {
			User user = mainService.getUserName(username);
			System.out.println(" USER NAME " + user.getUserName());
			session.setAttribute("userName", user.getUserName());
			session.setAttribute("userId", user.getUserId());
			Integer fileId = (Integer) session.getAttribute("fileId");
			if (fileId != null) {

				fileController.addToMyAccountOne(fileId, session, model);
				
				}

			List<UserFiles> file = mainService.getUserFiles((Integer) session
					.getAttribute("userId"));
			model.addAttribute("files", file);

			return "userdetails";
		}

		return "error";

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

	// added user object by Mahi
	@RequestMapping(value = "/main/signup", method = RequestMethod.GET)
	public String signup(@ModelAttribute("userData") User user1) {
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

	@RequestMapping(value = "/main/userfiledetails", method = RequestMethod.GET)
	public String userFileDetails(HttpSession session, Model model) {
		System.out.println(" i m inside userdetails page ");
		Integer userId = (Integer) session.getAttribute("userId");
		List<UserFiles> file = mainService.getUserFiles(userId);

		model.addAttribute("files", file);
		return "userdetails";

	}

	// Mapping for Trash items for users
	@RequestMapping(value = "/main/userDeletedFileDetails", method = RequestMethod.GET)
	public String userDeletedFileDetails(HttpSession session, Model model) {
		System.out.println(" i m inside trash page ");
		Integer userId = (Integer) session.getAttribute("userId");
		List<DeleteFiles> file = mainService.getUserDeletedFiles(userId);

		model.addAttribute("files", file);
		return "trash";

	}

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
	public String forgotpassword() {

		return "forgotPassword";
	}

	@RequestMapping(value = "/redirectToHome", method = RequestMethod.GET)
	public String redirectToHome() {

		return "home";
	}

	@RequestMapping(value = "/main/userContent", method = RequestMethod.GET)
	public String userContent() {

		return "userContent";
	}

	// Search option mapping from userheader tiles
	@RequestMapping(value = "/main/userSearch", method = RequestMethod.POST)
	public String userSearch(Model model, HttpServletRequest request,
			HttpSession session) {
		String search = request.getParameter("search");
		Integer userId = (Integer) session.getAttribute("userId");
		List<Files> files = mainService.getHomeSearchFiles(search);
		model.addAttribute("allFiles", files);
		model.addAttribute("files", files);
		if (userId != null) {
			return "userdetails";
		} else {
			return "home2";
		}
	}

	
	
	
	@RequestMapping(value = "main/signout", method = RequestMethod.GET)
	public String signOut(HttpSession session) {
		System.out.println("in controller");
		session.invalidate();

		return "home";
	}

	// Search option mapping from Homepage tiles
	@RequestMapping(value = "/main/homeSearch", method = RequestMethod.POST)
	public String homeSearch(Model model, HttpServletRequest request) {
		String search = request.getParameter("search");
		System.out.println("Inside Home Search");
		List<Files> files = mainService.getHomeSearchFiles(search);
		model.addAttribute("allFiles", files);
		System.out.println("Outside Home Search");

		return "home2";

	}


	
	@RequestMapping(value = "main/showLogin", method = RequestMethod.GET)
	public String showLogin() {

		return "showFile";
	}

	

	
}