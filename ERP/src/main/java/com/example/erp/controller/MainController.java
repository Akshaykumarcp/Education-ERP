package com.example.erp.controller;

import java.io.IOException; 
import java.util.ArrayList;   
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import com.example.erp.model.ReCaptchaResponse;
import com.example.erp.model.Registeration;
import com.example.erp.service.RegisterationService;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;

@Controller
public class MainController {
	
	private String message;
	
	@Autowired
	private RegisterationService regserv;
	
	@RequestMapping(value ="/",method = RequestMethod.GET)
	public String newRegistration(ModelMap model) {
		//Registeration candi = new Registeration();
		model.addAttribute("register", new Registeration());
		//model.addAttribute("message", message);
		return "/index";
	}
	
	@Autowired
	RestTemplate restTemplate;
	
	
	  @RequestMapping(value ="/registeration",method = RequestMethod.GET)
	 //@GetMapping("/registration") 
	  public String setModelAttributeRegister(ModelMap model,@RequestParam("phonenumber") String id) 
	  { model.addAttribute("register",	  new Registeration());
	  return "mobilenumbers/{id}/otp";
	  }
	 
	
	@RequestMapping(value ="/registeration",method = RequestMethod.POST)
	public String saveRegistration(@Validated @ModelAttribute("register")  Registeration re,
			BindingResult result, ModelMap model,@RequestParam(name="g-recaptcha-response") String captchaResponse,HttpServletResponse response) throws IOException {


		if(result.hasErrors())
		{
			return "dammy";
		}
		
		//Registeration list=regserv.getStudentByRef(reff);
		model.addAttribute("loginCandi", new Registeration());
		
		String url="https://www.google.com/recaptcha/api/siteverify";
		String params= "?secret=6LeJ9Y4UAAAAAI4GXvmTWcGWOvMG3rLtPmNYE55W&response="+captchaResponse;
		
		ReCaptchaResponse reCaptchaResponse = restTemplate.exchange(url+params,HttpMethod.POST,null,ReCaptchaResponse.class).getBody();
		if(reCaptchaResponse.isSuccess())
		{
			response.getWriter().println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
			response.getWriter().println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>");
			response.getWriter().println("<script>");
			response.getWriter().println("$(document).ready(function(){");
			response.getWriter().println("swal('Good job!', 'You clicked the button!', 'success');");
			response.getWriter().println("});");
			response.getWriter().println("</script>");
			
			
			/*
			 * <!-- Page Content -->
			 */
			/*
			 * out.
			 * println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>"
			 * ); out.
			 * println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>"
			 * ); out.println("<script>"); out.println("$(document).ready(function(){");
			 * out.println("swal('Good job!', 'You clicked the button!', 'success');");
			 * out.println("});"); out.println("</script>");
			 */
			regserv.save(re);	
			//regserv.sendRef(id);
			regserv.sendReferrenceId(re.getPhonenumber(),re.getReferenceid());
			return "display_candidate";
			
		}
		return "dammy";
		}
		
	@GetMapping("/Login_candidate")  
    public String login_candidate(ModelMap model){  
		//Registeration logincandi = new Registeration();
		model.addAttribute("loginCandi", new Registeration());
		model.addAttribute("register", new Registeration());
        return "/Login_candidate";  
    } 
			
		//redirectAttributes.addFlashAttribute("message", "Student " + student.getFirstName()+" "+student.getLastName() + " saved");
		//will redirect to viewemp request mapping  
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value ="/print") public String show() {
	 * 
	 * return "viewCandidates"; }
	 */
	
	@GetMapping("/viewCandidates")  
    public ModelAndView viewstudents(Model model){  
        List<Registeration> list=regserv.getAllStudents();
        model.addAttribute("register", new Registeration());
        return new ModelAndView("viewCandidates","list",list);  
    } 
	
	 /* It updates record for the given id in editstudent page and redirects to /viewstudents */  
	 @RequestMapping(value="/saveCandidate",method = RequestMethod.POST)  
	    public ModelAndView editSave(@ModelAttribute("editregister") Registeration re){  
	    	System.out.println("id is"+re.getId());
	    	regserv.updateMe(re);  
	        return new ModelAndView("redirect:/viewCandidates");  
	    }
	 
	 /* It deletes record for the given id  and redirects to /viewstudents */  
	    @RequestMapping(value="/deletecandidate/{id}",method = RequestMethod.GET)  
	    public ModelAndView delete(@PathVariable int id){  
		 regserv.delete(id);  
	        return new ModelAndView("redirect:/viewCandidates");  
	    }  
	    
	    /* It deletes record for the given id  and redirects to /viewstudents */  
	/*
	 * @RequestMapping(value="/delete",method = RequestMethod.GET) public
	 * ModelAndView delete(){ regserv.delete(); return new
	 * ModelAndView("redirect:/enroll"); }
	 */
	    
	    /*
		 * Method used to populate the country list in view. Note that here you can
		 * call external systems to provide real data.
		 */
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
		
	/*
	 * @RequestMapping(value="/sendOTP",method = RequestMethod.POST) public
	 * ModelAndView otp(@ModelAttribute("editregister") Registeration re){
	 * System.out.println("id is"+re.getId()); regserv.updateMe(re); return new
	 * ModelAndView("redirect:/viewCandidates"); }
	 */

	/*
	 * @GetMapping("/getMobile") public String login_candid(ModelMap model) {
	 * Registeration logincandi = new Registeration(); model.addAttribute("login",
	 * logincandi);
	 * 
	 * return "/Login_candidate"; }
	 * 
	 */
		
		/* It opens the record for the given id in editstudent page */
		 @RequestMapping(value="/editCandidate/{id}")  
		    public String edit(@PathVariable int id,ModelMap model){  
		/* Retrieving students details by ID */
		       Registeration regitera=regserv.getStudentById(id);  
		       System.out.println("Get Student By ID object=="+regitera.toString());
		       model.addAttribute("editregister", regitera);
				return "editCandidate";
		          } 
		
	/*
	 * @RequestMapping(value="/getMobile",method = RequestMethod.GET) public String
	 * getReferenceID(Model model){ //Registeration list3=
	 * regserv.getStudentByRef(id); // model.addAttribute("referenceid",new
	 * Registeration()); model.addAttribute("candidate_refid", new Registeration());
	 * model.addAttribute("register", new Registeration());
	 * model.addAttribute("loginCandi", new Registeration());
	 * //model.addAttribute("phonenumber",list3);
	 * //System.out.println(list3.getPhonenumber()); //
	 * System.out.println(list3.getPhonenumber());
	 * 
	 * return "redirect:mobilenumbers/list3.getPhonenumber()/otp"; }
	 */
		
		@RequestMapping(value="/Mobile",method=RequestMethod.GET)  
	public ModelAndView sendReferenceIDTOMob(@RequestParam("referenceid") int id, Model model){  	
			
			
		/*
		 * Registeration list3= regserv.getStudentByRef(id);
		 * 
		 * final String ACCOUNT_SID = "AC553d69e0a5e3d34dd5cc8db1f0ff47d0"; final String
		 * AUTH_TOKEN = "c70141a662af06822d70d0fadb9c9ad5"; Twilio.init(ACCOUNT_SID,
		 * AUTH_TOKEN); Message message = Message.creator( new
		 * com.twilio.type.PhoneNumber(list3.getPhonenumber()), new
		 * com.twilio.type.PhoneNumber("+12052368290"), "Your Reference ID is")
		 * .create();
		 * 
		 * System.out.println(message.getSid());
		 */
			
			Registeration list3= regserv.getCandidatesByreferenceID(id);
	// model.addAttribute("referenceid",new Registeration());
	// model.addAttribute("candidate_refid", new Registeration());
	 model.addAttribute("register", new Registeration());
	//model.addAttribute("phonenumber",list3.getPhonenumber());
	model.addAttribute("candidateAdmission", new Registeration());
	//System.out.println(list3.getPhonenumber());
	// System.out.println(list3.getPhonenumber());
	
	return new ModelAndView("admission_form_fill","listme",list3);  
		/* return "forward:mobilenumbers/{phonenumber}/otp"; */	 
}
		
		@GetMapping("/candidate-admission-form")
		public String admission(Model model)
		{		
		/*
		 * List<Registeration> list2=regserv.getRegisteration();
		 * System.out.println(list2.toString());
		 */
			model.addAttribute("candidateAdmission", new Registeration());
			model.addAttribute("register", new Registeration());
		
			return "/admission_form_fill";
		}
		
		@GetMapping("/screening-dashboard")
		public String candidateScreening(Model model)
		{		
		/*
		 * List<Registeration> list2=regserv.getRegisteration();
		 * System.out.println(list2.toString());
		 */
			//model.addAttribute("candidateAdmission", new Registeration());
			model.addAttribute("register", new Registeration());
			//model.addAttribute("candidateAdmission", new Registeration());
		
			return "/screening-dashboard";
		}
		
		@PostMapping("/candidate-admission-form")
		public String saveAdmissionForm(@ModelAttribute("candidateAdmission")  Registeration re,
				BindingResult result, ModelMap model)
		{		
			model.addAttribute("candidateAdmission", new Registeration());
			model.addAttribute("register", new Registeration());
			regserv.saveAdmission(re);
			System.out.println(re.getClass());
			return "/admission_success";
		}
		
		@GetMapping("/htmltesting")
		public String candidate(Model model)
		{		
		/*
		 * List<Registeration> list2=regserv.getRegisteration();
		 * System.out.println(list2.toString());
		 */
			//model.addAttribute("candidateAdmission", new Registeration());
			model.addAttribute("register", new Registeration());
			//model.addAttribute("candidateAdmission", new Registeration());
		
			return "/htmltesting";
		}
		
}

