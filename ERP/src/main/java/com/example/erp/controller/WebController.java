package com.example.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WebController {


	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		return "index2";
	}

}
