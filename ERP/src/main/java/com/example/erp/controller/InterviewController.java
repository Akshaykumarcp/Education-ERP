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
import org.springframework.web.servlet.ModelAndView;

import com.example.erp.model.Courses;
import com.example.erp.model.InterviewDefinition;
import com.example.erp.model.ProgramType;
import com.example.erp.model.Registeration;
import com.example.erp.service.InterviewDefinitionService;
import com.google.gson.Gson;

@Controller
/* @RequestMapping("demo") */
public class InterviewController {

	@Autowired
	private InterviewDefinitionService intser;

	@GetMapping("/interview-definition")
	public ModelAndView interviewDefinition(ModelMap modelmap) {

		modelmap.addAttribute("interviewdef", new InterviewDefinition());
		modelmap.addAttribute("programs", intser.retriveAllProgramType());
		// modelmap.addAttribute("progr", new ProgramType());
		List<InterviewDefinition> list = intser.getAllInterviewDefintions();
		/* modelmap.addAttribute("register", new Registeration()); */
		return new ModelAndView("interview-definition", "list", list);
		/* return "/interview-definition"; */
	}

	/* @ModelAttribute("register") */

	/* @GetMapping("/loadCourse/{counid}") */
	@RequestMapping(value = "loadCourse/{id}", method = RequestMethod.GET)
	@ResponseBody
	public String loadCourse(@PathVariable int id, ModelMap model) {

		// Courses idd = intser.getProgramById(id);
		Gson gs = new Gson();
		/* gs.toJson(intser.getProgramById(id)); */
		model.addAttribute("interviewdef", new InterviewDefinition());
		model.addAttribute("register", new Registeration());
		// model.put("co", idd);
		// System.out.println("Get Program By ID object=="+gs.toString());
		// model.addAttribute("course", gs);
		/* gs.toJson(intser.getProgramById(id)) */
		return gs.toJson(intser.getProgramById(id));

	}

	@PostMapping("/interview-definition")
	public String interviewDef(InterviewDefinition in) {
		intser.save(in);
		return "interview-definition";
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

	@RequestMapping(value = "/deleteInterviewDefinition/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable int id) {
		intser.delete(id);
		return new ModelAndView("redirect:/interview-definition");
	}

	
	  @RequestMapping(value="/editInterviewDefinition/{id}")
	  public String   edit(@PathVariable int id,ModelMap model)
	  { 
		  InterviewDefinition intedefi=intser.getInterviewDefinitionById(id);
	  model.addAttribute("interviewdef", intedefi);
	  return "edit_interview_definition"; 
	  }
	  
	  @GetMapping("/edit_interview_defition")
	  public String getEdit(ModelMap model)
	  {
		  model.addAttribute("interviewdef", new InterviewDefinition());
		  return "edit_interview_definition";
	  }
	  
	  @RequestMapping(value="/save-interview-definition",method = RequestMethod.POST)  
	    public ModelAndView editSave(@ModelAttribute("interviewdef") InterviewDefinition re){  
	    	System.out.println("id is"+re.getId());
	    	intser.updateInterviewDefinition(re);  
	        return new ModelAndView("redirect:/interview-definition");  
	    }
	 

}
