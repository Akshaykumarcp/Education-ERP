package com.example.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WebController {
	


	@RequestMapping(value = "/akshay", method = RequestMethod.GET)
	public String home() {
		return "admin";
	}

	/*
	 * @RequestMapping(value = "/admin", method = RequestMethod.GET) public String
	 * home2() { return "starter"; }
	 */

	@RequestMapping(value = "/blackadmin", method = RequestMethod.GET)
	public String home3() {
		return "index2";
	}

	
	
}
