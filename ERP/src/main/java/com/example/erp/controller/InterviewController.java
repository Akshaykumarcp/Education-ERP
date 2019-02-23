package com.example.erp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.erp.model.Courses;
import com.example.erp.model.InterviewDefinition;
import com.example.erp.model.ProgramType;
import com.example.erp.model.Registeration;
import com.example.erp.service.InterviewDefinitionService;
import com.google.gson.Gson;

@Controller
@RequestMapping("demo")
public class InterviewController {

	@Autowired
	private InterviewDefinitionService intser;

	@GetMapping("/interview-definition")
	public String interviewDefinition(ModelMap modelmap) {
		modelmap.addAttribute("register", new Registeration());
		modelmap.addAttribute("interviewdef", new InterviewDefinition());
		modelmap.addAttribute("programs", intser.retriveAllProgramType());
		//modelmap.addAttribute("progr", new ProgramType());
		return "/interview-definition";
	}

	/* @ModelAttribute("register") */
	
	/* @GetMapping("/loadCourse/{counid}") */
	@RequestMapping(value="loadCourse/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Object loadCourse(@PathVariable int id,ModelMap model)
	{
	
		//Courses idd = intser.getProgramById(id);
		Gson gs = new Gson();
		/* gs.toJson(intser.getProgramById(id)); */
		model.addAttribute("interviewdef", new InterviewDefinition());
		model.addAttribute("register", new Registeration());
		//model.put("co", idd);
	      // System.out.println("Get Program By ID object=="+gs.toString());
	      // model.addAttribute("course", gs);
		/* gs.toJson(intser.getProgramById(id)) */
		return gs.toJson(intser.getProgramById(id)) ;
		
	}

	@PostMapping("/interview-definition")
	public String interviewDef(InterviewDefinition in) {
		intser.save(in);
		return "admission_success";
	}

	/*
	 * @GetMapping("/viewPrograms") public String viewstudents(){
	 * 
	 * 
	 * System.out.println("Interview controller , modelmap programs value"+${
	 * programs});
	 * 
	 * return "interview-definition"; }
	 */

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
