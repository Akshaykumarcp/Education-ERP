package com.example.erp.controller;


import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestingAjaxController {
	
	@RequestMapping("test/hello")
	public String helo()
	{
		return "index";
	}
	
	
	@RequestMapping("test/ajax")
	public String testing()
	{
		return "test";
	}
	
	@RequestMapping("test/get_time")
	@ResponseBody
	public String getServerTime()
	{
		Date d=new Date();
		return d.toString();
	}
	
}
