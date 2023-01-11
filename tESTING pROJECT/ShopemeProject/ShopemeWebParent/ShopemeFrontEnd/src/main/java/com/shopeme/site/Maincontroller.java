package com.shopeme.site;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Maincontroller {

	@GetMapping("")
	public String ViewHomePage() {
		return "index";
	}
}
