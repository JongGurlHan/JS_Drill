package com.mogakko.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainController {
			
	@GetMapping("/main_map")
	public String main_map() {
		return "main/main_map";
	}
	
	@GetMapping("/main_bulletin")
	public String main_bulletin() {
				
		return "main/main_bulletin";
	}
	
	

}
