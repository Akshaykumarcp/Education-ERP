package com.example.erp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.erp.model.admin.AdminLogin;
import com.example.erp.model.admin.ProgramType;
import com.example.erp.service.admin.AdminService;
import com.example.erp.service.admin.WebService;

@Controller
@SessionAttributes("adminname")
/* @RequestMapping("/admin") */
public class AdminController {

	@Autowired
	private AdminService adminservice;
	
	
	@Autowired
	private WebService webservice;
	
	String error = null;

	/*
	 * @GetMapping("/admin") public String starter() { return "admin/homepage"; }
	 */

	@GetMapping("/admincontroller")
	public String welcome() {
		return "Hello Admin Controller";
	}
	
	@GetMapping("/admin")
	public String starter(ModelMap model) {
		return "admin/login";
		
	}
	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String getAdminDetails(@RequestParam("mailid") String mailid, @RequestParam("password") String password, ModelMap model) {
		
		/* loginError = null; */
		AdminLogin adminlogin = webservice.getAdminDetails();
		System.out.println(" Admin Mailid from DB--> " + adminlogin.getMailid());
		System.out.println(" Admin Password from DB --> " + adminlogin.getPassword());
		System.out.println(" Admin Mailid from Form--> " + mailid);
		System.out.println(" Admin Password from Form --> " + password);
		
		String adminmail = adminlogin.getMailid();
		String adminpassword = adminlogin.getPassword();
		
		if (adminmail.equals(mailid) && adminpassword.equals(password))
		{
			System.out.println("Right");
			model.put("adminname", adminlogin.getUsername());
			return "admin/homepage";
		}
		else
			
		error = "Invalid Credentials";
		System.out.println(error);
		model.addAttribute("error", error);
			return "admin/login";		
	}
	
	@GetMapping("/programtype")
	public String adminprogramType() {
		return "admin/programType";
	}
	
	
	/*
	 * @GetMapping("/admin") public String adminLogin() { return
	 * "admin/programType"; }
	 */
	
	@PostMapping("/loadAdminProgramType")
	@ResponseBody
	public void loadProgramType(@RequestBody ProgramType programtype) {
		/* comp.save(complaint); */
		System.out.println("loadprogram from admin controller");
		System.out.println(programtype);
		System.out.println(programtype.getProgramType());
		adminservice.save(programtype.getProgramType());
	}
	
	@GetMapping("/getAllProgramType")
	@ResponseBody
	public List<ProgramType> AllProgramType() {
		/* comp.save(complaint); */
		return adminservice.AllProgramType();
		
	}
	
	@RequestMapping(value = "/deleteProgramType/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable int id) {
		adminservice.deleteProgramType(id);
		return new ModelAndView("redirect:/programtype");
	}

}
