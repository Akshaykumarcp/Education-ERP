package com.example.erp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.erp.model.Registeration;
import com.example.erp.service.CandidateStatusService;

@Controller
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
    public ModelAndView getStatus(@RequestParam("referenceid") int id,Model model){  
		List<Registeration> list= candistat.getCandidatesStatus(id);
        model.addAttribute("register", new Registeration());
        
        return new ModelAndView("candidate_status2","list",list);  
    }
	
}
