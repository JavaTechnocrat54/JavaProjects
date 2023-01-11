package com.shopeme.admin.user.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shopeme.admin.FileUplodaUtil;
import com.shopeme.admin.user.UserNotFoundException;
import com.shopeme.admin.user.UserService;
import com.shopeme.common.entity.Role;
import com.shopeme.common.entity.User;

@Controller
public class UserController {

	@Autowired
	private UserService service;

	@GetMapping("/users")
	public String listAll(Model model) {
		List<User> listUsers = service.listAll();
		model.addAttribute("listUsers", listUsers);
		return "users";
	}

	@GetMapping("/users/new")
	public String newUser(Model model) {
		List<Role> listRole = service.listRoles();
		User user = new User();
		user.setEnabled(true);
		model.addAttribute("user", user);
		model.addAttribute("listRole", listRole);
		model.addAttribute("pageTitle", "Create New User");
		return "user_form";
	}

	@PostMapping("/users/save")
	public String saveUser(User user, RedirectAttributes redirectAttrubute, @RequestParam("image") MultipartFile multipartFile) throws IOException {
		
		if(!multipartFile.isEmpty()) {
			String fileName=StringUtils.cleanPath(multipartFile.getOriginalFilename());
			user.setPhotos(fileName);
			User saveUser=service.save(user);
			String uploadDir="user-photos/"+saveUser.getId();
		
			FileUplodaUtil.cleanDir(uploadDir); 
			FileUplodaUtil.saveFile(uploadDir, fileName, multipartFile);
		}else {
			if(user.getPhotos().isEmpty() )user.setPhotos(null);
			service.save(user);
		}
		
		//
		redirectAttrubute.addFlashAttribute("message", "The user has been save successfully");
		return "redirect:/users";
	}

	@GetMapping("/users/edit/{id}")
	public String editUser(@PathVariable(name = "id") Integer id, RedirectAttributes redirectAttrubute, Model model) {

		try {
			User user = service.get(id);
			List<Role> listRole = service.listRoles();
			model.addAttribute("user", user);
			model.addAttribute("listRole", listRole);
			model.addAttribute("pageTitle", "Edit User(ID :" + id + ")");
			return "user_form";
		} catch (UserNotFoundException e) {
			redirectAttrubute.addFlashAttribute("message", e.getMessage());
			return "redirect:/users";
		}

	}

	@GetMapping("/users/delete/{id}")
	public String deleteUser(@PathVariable(name = "id") Integer id, RedirectAttributes redirectAttrubute, Model model) {

		try {
			service.delete(id);
			redirectAttrubute.addFlashAttribute("message", "The User ID " + id + "has been deleted Successfully");

			return "redirect:/users";
		} catch (UserNotFoundException e) {
			redirectAttrubute.addFlashAttribute("message", e.getMessage());
			return "redirect:/users";
		}

	}
	@GetMapping("/users/{id}/enabled/{status}")
	public String updateUserEnabledStatus(@PathVariable("id") Integer id,@PathVariable("status") boolean enabled,RedirectAttributes redirectAttrubutes) {
		service.updateUserEnableStatus(id, enabled);
		String status=enabled?"enabled" :"disabled";
		String message="The User ID"+id+"has been "+status;
		redirectAttrubutes.addFlashAttribute("message",message);
		
		return "redirect:/users";
		
	}
	

}
