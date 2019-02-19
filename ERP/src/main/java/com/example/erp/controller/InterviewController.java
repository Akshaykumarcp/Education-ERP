package com.example.erp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.erp.model.InterviewDefinition;
import com.example.erp.model.Registeration;
import com.example.erp.service.InterviewDefinitionService;

@Controller
public class InterviewController {

	@Autowired
	private InterviewDefinitionService intser;
	
	@GetMapping("/interview-definition")
	public String interviewDefinition(Model model)
	{
		model.addAttribute("register", new Registeration());
		model.addAttribute("interviewdef", new InterviewDefinition());
		return "/interview-definition";
	}
	
	
	/* @ModelAttribute("register") */
	
	@PostMapping("/interview-definition")
	public String interviewDef( InterviewDefinition in)
	{
		intser.save(in);
		return "admission_success";
	}
	
	
	@ModelAttribute("academicYear")
	public List<String> initializeAcademicYear() {

		List<String> academicyear = new ArrayList<String>();
		academicyear.add("2015-2016");
		academicyear.add("2016-2017");
		academicyear.add("2017-2018");
		academicyear.add("2018-2019");
		academicyear.add("2019-2020");
		return academicyear;
	}
	
	@ModelAttribute("courses")
	public List<String> initializeCountries() {

		List<String> course = new ArrayList<String>();
		course.add("BCA");
		course.add("BBM");
		course.add("BCOM");
		course.add("MBA"); 
		course.add("MCA");
		course.add("MTech");
		course.add("OTHER");
		return course;
	}
	
	
	
}
