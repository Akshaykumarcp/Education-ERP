package com.example.erp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.erp.model.Registeration;
import com.example.erp.service.CandidateStatusService;

@Controller
@SessionAttributes("candidate")
public class Candidate_statusController {
	
	@Autowired
	CandidateStatusService candistat;
	
	@GetMapping("/candidate-status")
	public String admission(Model model)
	{		
	/*
	 * List<Registeration> list2=regserv.getRegisteration();
	 * System.out.println(list2.toString());
	 */
		//model.addAttribute("candidateAdmission", new Registeration());
		model.addAttribute("register", new Registeration());
		model.addAttribute("status", new Registeration());
		//model.addAttribute("candidateAdmission", new Registeration());
	
		return "/candidate_status";
	}
	
	@GetMapping("/getCandidateStatus")  
    public ModelAndView getStatus(@RequestParam("referenceid") int id,ModelMap model){  
		Registeration list= candistat.getCandidatesStatus(id);
        model.addAttribute("register", new Registeration());
        model.put("candidate", list.getFullname());
        System.out.println("full name"+ list.getFullname());
        System.out.println("object"+ list);
        return new ModelAndView("candidate_status2","list",list);  
    }
	
}
