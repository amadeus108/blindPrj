package com.blindproject.blind.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blindproject.blind.entity.Admin;
import com.blindproject.blind.entity.Applier;
import com.blindproject.blind.entity.Employee;
import com.blindproject.blind.service.GuestService;



@Controller
@RequestMapping("/guest/")
public class GuestController {
	
	@Autowired
	private GuestService service;
	
	@GetMapping("login")
	
	public String login() {
		
		return "guest.login";
	
	}
	
	@GetMapping("signup")	
	public String signup() {
	
		return "guest.signup";
	
	}
		
	@PostMapping("signup")	
	public String signup(Employee employee, Applier applier, Admin admin) {

		return "redirect:login";
	}
	
		
}