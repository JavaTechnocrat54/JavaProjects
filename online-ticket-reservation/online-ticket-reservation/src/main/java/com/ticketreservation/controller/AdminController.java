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

import com.ticketreservation.dao.AdminDao;
import com.ticketreservation.model.Admin;

@Controller
public class AdminController {
	
	@Autowired
	private AdminDao adminDao;

	@GetMapping("/adminregister")
	public String goToManagerRegisterPage() {
		
		return "adminregister";
	}
	
	@GetMapping("/")
	public String goToHomePage() {
		return "index";
	}
	
	@GetMapping("/adminlogin")
	public String goToManagerLoginPage() {
		
		return "adminlogin";
	}
	
	@PostMapping("/adminregister")
	public ModelAndView loginAdmin(@ModelAttribute Admin admin)  {
		ModelAndView mv = new ModelAndView();
		Admin addAdmin = this.adminDao.save(admin);

		if (addAdmin != null) {
			mv.addObject("status", "Admin registered Successfully!!!");
			mv.setViewName("adminlogin");
		}

		else {
			
			mv.addObject("status", "Failed to register admin!!!");
			mv.setViewName("adminregister");
			
		}

		return mv;

	}
	
	@PostMapping("/adminlogin")
	public ModelAndView loginManager(@RequestParam("emailId") String emailId, @RequestParam("password") String password, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Admin admin =  this.adminDao.findByEmailIdAndPassword(emailId, password);
		if(admin != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("active-admin", admin);
			mv.addObject("status", "Admin Successfully Logged In!!!");
			mv.setViewName("index");
		}
		
		else {
			
			mv.addObject("status","Failed to Login as admin!!!");
			mv.setViewName("adminlogin");
		}
		
		return mv;
	}
	
	@GetMapping("/logout")
	public ModelAndView loginManager(HttpSession session) {
		ModelAndView mv = new ModelAndView();
	
		session.removeAttribute("active-admin");
		session.removeAttribute("active-user");
		mv.addObject("status", "Logged out Successfully!!!");
		mv.setViewName("index");
		return mv;
	}
	


}
