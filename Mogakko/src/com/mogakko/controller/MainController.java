package com.mogakko.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/main")
	public String main() {
		return "main";
	}
	@GetMapping("/main/main_map")
	public String main_map() {
		return "main/main_map";
	}
	@GetMapping("/main/main_bulletin")
	public String main_bulletin() {
		return "main/main_bulletin";
	}
}
