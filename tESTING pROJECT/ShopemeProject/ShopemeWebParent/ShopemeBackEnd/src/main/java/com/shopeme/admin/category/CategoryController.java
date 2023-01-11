package com.shopeme.admin.category;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shopeme.admin.FileUplodaUtil;
import com.shopeme.common.entity.Category;

@Controller
public class CategoryController {
	@Autowired
	public CategoryService service;

	@GetMapping("/categories")
	public String listAll(Model model) {
		List<Category> listCategories = service.listAll();
		model.addAttribute("listCategories", listCategories);
		return "categories";
	}
	@GetMapping("/categories/new")
	public String newCategory(Model model) {
	List<Category> listCategories =	service.listCategoryisUsedInForm();
	
		model.addAttribute("category",new Category());
		model.addAttribute("listCategories",listCategories);
		model.addAttribute("pageTitle","Create New Category");
		return "category_form";
	}
	@PostMapping("/categories/save")
	public String saveCaregory(Category category,@RequestParam("fileImage") MultipartFile multipartFile
			,RedirectAttributes re) throws IOException {
	String filename=StringUtils.cleanPath(multipartFile.getOriginalFilename());
	category.setImage(filename);
		Category saveCategory=service.save(category);
		String uplodeDir="../category-image/"+saveCategory.getId();
		FileUplodaUtil.saveFile(uplodeDir, filename, multipartFile);
		re.addFlashAttribute("message","The CateGory has Been Save Successfully");
		return "redirect:/categories";
	}
}
