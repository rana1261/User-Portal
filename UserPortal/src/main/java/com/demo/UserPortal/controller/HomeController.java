package com.demo.UserPortal.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.UserPortal.model.User;
import com.demo.UserPortal.service.UserServiceImp;

@Controller
public class HomeController {
	@Autowired
	UserServiceImp userServiceImp;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	String globalEmail = null;
	String globalPassword = null;
	String globalCheckMail="DeafaultEmailTestExample@gmail.com";

	@RequestMapping("/")
	public String login() {
		return "login";
	}

	@PostMapping("/verify")
	public String home(@RequestParam("email") String email, @RequestParam("password") String pass,
			HttpServletRequest req, HttpServletResponse res, Model m) throws ServletException, IOException {
		System.out.println(email);
		System.out.println(pass);
		globalEmail = email;
		globalPassword = pass;

		try {

			if (email.equals("admin@localhost.local") && pass.equals("admin")) {
				List<User> user = userServiceImp.getAllUser();
				HttpSession session = req.getSession();
				session.setAttribute("email", email);
				m.addAttribute("userlist", user);
				return "redirect:/userList";
			} else {
				String status = null;
				User user = userServiceImp.getEmail(email);
				boolean passwordverify = BCrypt.checkpw(pass, user.getPassword());
				if (user.getEmail().equals(email) && passwordverify) {
					HttpSession session = req.getSession();
					session.setAttribute("email", email);
					status = "redirect:/profile";
				} else if (userServiceImp.getEmail(email).getEmail().equals(null)
						|| userServiceImp.getEmail(email).getEmail().equals(email)
								&& BCrypt.checkpw(pass, userServiceImp.getEmail(email).getPassword()) == false) {
					m.addAttribute("msg", "Invalid email & Password");
					status = "login";
				}
				return status;

			}

		} catch (Exception e) {
			m.addAttribute("msg", "Invalid email & Password");
			return "login";

		}

	}

	@GetMapping("/profile")
	public String profilePage(HttpServletRequest req, Model m)throws ServletException, IOException {
		String status = null;
		User user = userServiceImp.getEmail(globalEmail);
		m.addAttribute("user", user);
		status = "profile";
		return status;
	}

	@GetMapping("/userList")
	public String userListPage(HttpServletRequest req, Model m)throws ServletException, IOException {
		List<User> user = userServiceImp.getAllUser();
		m.addAttribute("userlist", user);
		return "userList";
	}

	@RequestMapping("/logout")
	public String logout(Model m) {
		m.addAttribute("smsg", "Log Out Successfully");
		return "login";
	}

	@ResponseBody
	@RequestMapping("/emailCheck")
	public String emailCheck(@RequestParam("email") String email) {
		String status = null;
		User user = userServiceImp.getEmail(email);
		
		try {

			if (user.getEmail().equals(email)) {
				globalCheckMail=user.getEmail();
				status = "taken";

			}
		} catch (Exception e) {

			status = "not_taken";
		}
		return status;
	}

	@PostMapping("/registerSave")
	public String registerSave(@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
			@RequestParam("age") int age, @RequestParam("address") String address, @RequestParam("phone") String phone,
			@RequestParam("email") String email, @RequestParam("bdate") String bdate,
			@RequestParam("password") String password, HttpServletRequest req, Model m)throws ServletException, IOException {
		int status = 0;
		
       if(globalCheckMail.equals(email) || globalCheckMail==null ) {
       	HttpSession session = req.getSession();
			session.setAttribute("emaiAlert", "taken");
        }else{
    		User user = new User();
    		user.setFirstName(firstName);
    		user.setLastName(lastName);
    		user.setAge(age);
    		user.setAddress(address);
    		user.setPhone(phone);
    		user.setEmail(email);
    		user.setBirthdate(bdate);

    		user.setPassword(passwordEncoder.encode(password));

    		try {
    			status = userServiceImp.save(user);

    		} catch (Exception e) {
    			e.printStackTrace();
    			status = 0;

    		}
    		if (status == 1) {
    			HttpSession session = req.getSession();
    			session.setAttribute("alertMsg", "sucess");
    			//System.out.println("success man");

    		} else {
    			HttpSession session = req.getSession();
    			session.setAttribute("alertMsg", "fail");

    		}
        }


		return "redirect:/register";
	}

	@GetMapping("/register")
	public String register() {

		return "registration";
	}

	@ResponseBody
	@RequestMapping("/cpassword")
	public int cPassword(@RequestParam("oldPassword") String oldPassword,
			@RequestParam("newPassword") String newPassword, @RequestParam("conPassword") String conPassword,
			@RequestParam("email") String email, HttpServletRequest req, Model m) throws ServletException, IOException{
		System.out.println(newPassword);
		System.out.println(conPassword);
		System.out.println(email);
		int status = 0;
		User user = userServiceImp.getEmail(email);
		if (newPassword.equals(conPassword)) {
			boolean passwordverify = BCrypt.checkpw(oldPassword, user.getPassword());
			if (passwordverify) {
				user.setPassword(passwordEncoder.encode(newPassword));
				status = userServiceImp.save(user);
				HttpSession session = req.getSession();
				session.setAttribute("email", email);
				m.addAttribute("user", user);
				globalEmail = email;
				globalPassword = newPassword;
			}

		}
		return status;
	}

	@GetMapping("/changePassword")
	public String changePassword(HttpServletRequest req, Model m)throws ServletException, IOException {
		User user = userServiceImp.getEmail(globalEmail);
		m.addAttribute("user", user);
		return "changePassword";
	}

	@RequestMapping("/search")
	@ResponseBody
	public List<User> search(Model model, @RequestParam("fname") String name) {

		try {

			List<User> userlist = userServiceImp.getUserByName(name.trim());

			return userlist;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
