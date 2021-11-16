package com.putul.springboot.web.WebApplication.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

// /Login => "My Controller"
@Controller
public class LoginController {
	
	@RequestMapping("/login")
	@ResponseBody
	public String loginMessage(){
		return "login";
	}
}
