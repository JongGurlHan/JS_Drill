package com.mogakko.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mogakko.beans.ContentBean;
import com.mogakko.service.MainService;

@Controller
public class LatLngController {
	
	@Autowired
	private MainService mainService;

	@GetMapping("/main/LatLngTester2")
	public String main_test(Model model) {		
		
		 List<ContentBean> getContentLatLng = mainService.getContentLatLng();
		 model.addAttribute("getContentLatLng", getContentLatLng);
		 
		return "/main/LatLngTester2";
	}
	
}
