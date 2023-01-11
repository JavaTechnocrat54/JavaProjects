package com.ticketreservation.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ticketreservation.dao.UserDao;
import com.ticketreservation.model.User;

@Controller
public class UserController {
	
	@Autowired
	private UserDao userDao;

	@GetMapping("/userlogin")
	public String goToUserLoginPage() {
		
		return "userlogin";
	}
	
	@GetMapping("/userregister")
	public String goToUserRegisterPage() {
		
		return "userregister";
	}
	
	@PostMapping("/userregister")
	public ModelAndView loginAdmin(@ModelAttribute User user)  {
		ModelAndView mv = new ModelAndView();
		User addUser = this.userDao.save(user);

		if (addUser != null) {
			mv.addObject("status", "User registered Successfully!!!");
			mv.setViewName("userlogin");
		}

		else {
			
			mv.addObject("status", "Failed to register user!!!");
			mv.setViewName("userregister");
			
		}

		return mv;

	}
	
	@PostMapping("/userlogin")
	public ModelAndView loginManager(@RequestParam("emailId") String emailId, @RequestParam("password") String password, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		User user =  this.userDao.findByEmailIdAndPassword(emailId, password);
		if(user != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("active-user", user);
			mv.addObject("status", "User Successfully Logged In!!!");
			mv.setViewName("index");
		}
		
		else {
			
			mv.addObject("status","Failed to Login as user!!!");
			mv.setViewName("userlogin");
		}
		
		return mv;
	}

}
