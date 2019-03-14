package com.example.erp.controller; 

import java.io.IOException; 
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import com.example.erp.model.ReCaptchaResponse;
import com.example.erp.model.Registeration;
import com.example.erp.service.InterviewDefinitionService;
import com.example.erp.service.RegisterationService;
/*import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;*/

@Controller
@SessionAttributes("candidate")
public class MainController {

	private String message;
	private String success;

	@Autowired
	private RegisterationService regserv;

	@Autowired
	private InterviewDefinitionService intser;
	
	@Autowired
	private RestTemplate restTemplate;

	@GetMapping("/logIn")
	public String homepage_login(@RequestParam(name = "selector") int select,
			@RequestParam(name = "userName") String user, @RequestParam(name = "passWord") String pass) {
		// Registeration logincandi = new Registeration();

		System.out.println(select + " " + user + " " + pass);
		if ("admin".equalsIgnoreCase(user) && "admin".equalsIgnoreCase(pass))
		/* if(select==1 && user=="admin" && pass=="admin") */
		{
			System.out.println(select + " " + user + " " + pass);
			return "/starter";

		}
		return "/dammy";

	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String newRegistration(ModelMap model) {

		// Registeration candi = new Registeration();
		model.addAttribute("message", message);
		model.addAttribute("Registeration", new Registeration());
		model.addAttribute("programs", intser.retriveAllProgramType());
		model.addAttribute("loginCandi", new Registeration());
		return "/index";
	}

	/*
	 * @RequestMapping( value ="/registeration",method = RequestMethod.GET)
	 * //@GetMapping("/registration") public String
	 * setModelAttributeRegister(ModelMap model,@RequestParam("phonenumber") String
	 * id) { model.addAttribute("register",new Registeration());
	 * model.addAttribute(new Registeration()); return "mobilenumbers/{id}/otp"; }
	 */

	@RequestMapping(value = "/registeration", method = RequestMethod.POST)
	public String saveRegistration(@ModelAttribute("Registeration") Registeration Registeration, Model model,
			@RequestParam(name="g-recaptcha-response") String captchaResponse) throws IOException {
		/*
		 * if(result.hasErrors()) {
		 * 
		 * return "redirect:/"; }
		 */
		// Registeration list=regserv.getStudentByRef(reff);
		
		
		
		model.addAttribute("loginCandi", new Registeration());

		String url = "https://www.google.com/recaptcha/api/siteverify";
		String params = "?secret=6LeJ9Y4UAAAAAI4GXvmTWcGWOvMG3rLtPmNYE55W&response="+captchaResponse;

		ReCaptchaResponse reCaptchaResponse = restTemplate.exchange(url +params, HttpMethod.POST, null, ReCaptchaResponse.class).getBody();
		
		 if(reCaptchaResponse.isSuccess()) { 
		 
		regserv.save(Registeration);
		// regserv.sendRef(id);
		/*
		 * regserv.sendReferrenceIdViaMsg(Registeration.getPhonenumber(),Registeration.
		 * getReferenceid());
		 */
			
			/*
			 * regserv.sendReferrenceIdViaMail(Registeration.getMailid(),
			 * Registeration.getReferenceid());
			 */
		success = "how";
		
			 
		return "redirect:/";
		 }
		  else
		  {
		 message="Please Verify captcha";
		
		 return "redirect:/"; }
		 
		/* } return "redirect:/"; */

	}
	
	@GetMapping("/jqueryTest")
	public String log(ModelMap model) {
	
		return "testJquery";
	}
	

	@GetMapping("/Login_candidate")
	public String login_candidate(ModelMap model) {
		// Registeration logincandi = new Registeration();
		model.addAttribute("loginCandi", new Registeration());
		return "/Login_candidate";
	}

	// redirectAttributes.addFlashAttribute("message", "Student " +
	// student.getFirstName()+" "+student.getLastName() + " saved");
	// will redirect to viewemp request mapping

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value ="/print") public String show() {
	 * 
	 * return "viewCandidates"; }
	 */

	@GetMapping("/viewCandidates")
	public ModelAndView viewstudents(ModelMap model, HttpServletRequest request) {
		List<Registeration> list = regserv.getAllStudents();
		model.put("candid", list);
		System.out.println(list);
		return new ModelAndView("viewCandidates", "list", list);
	}

	/*
	 * @ModelAttribute("list")
	 * 
	 * @GetMapping("/viewCandid") public List<Registeration> viewCandidates(ModelMap
	 * model){ List<Registeration> list=regserv.getAllStudents();
	 * model.put("candid", list); System.out.println(list); return list; }
	 */

	/*
	 * It updates record for the given id in editstudent page and redirects to
	 * /viewstudents
	 */
	@RequestMapping(value = "/saveCandidate", method = RequestMethod.POST)
	public ModelAndView editSave(@ModelAttribute("editregister") Registeration re) {
		System.out.println("id is" + re.getId());
		regserv.updateMe(re);
		return new ModelAndView("redirect:/viewCandidates");
	}

	/* It deletes record for the given id and redirects to /viewstudents */
	@RequestMapping(value = "/deletecandidate/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable int id) {
		regserv.delete(id);
		return new ModelAndView("redirect:/viewCandidates");
	}

	/* It deletes record for the given id and redirects to /viewstudents */
	/*
	 * @RequestMapping(value="/delete",method = RequestMethod.GET) public
	 * ModelAndView delete(){ regserv.delete(); return new
	 * ModelAndView("redirect:/enroll"); }
	 */

	/*
	 * Method used to populate the country list in view. Note that here you can call
	 * external systems to provide real data.
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

	@ModelAttribute("coursesType")
	public List<String> initializecoursesType() {
		List<String> coursesType = new ArrayList<String>();
		coursesType.add("Fulltime");
		coursesType.add("Correspondance");
		coursesType.add("Evening");
		return coursesType;
	}

	@ModelAttribute("firstLanguage")
	public List<String> initializefirstLanguage() {
		List<String> firstLanguage = new ArrayList<String>();
		firstLanguage.add("English");
		firstLanguage.add("Sanskrit");
		firstLanguage.add("Hindi");
		firstLanguage.add("French");
		return firstLanguage;
	}

	@ModelAttribute("caste")
	public List<String> initializeCaste() {
		List<String> caste = new ArrayList<String>();
		caste.add("SC/ST");
		caste.add("OBC");
		caste.add("GM");
		return caste;
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
	@RequestMapping(value = "/editCandidate/{id}")
	public String edit(@PathVariable int id, ModelMap model) {
		/* Retrieving students details by ID */
		Registeration regitera = regserv.getStudentById(id);
		System.out.println("Get Student By ID object==" + regitera.toString());
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

	@RequestMapping(value = "/Mobile", method = RequestMethod.GET)
	public ModelAndView sendReferenceIDTOMob(@RequestParam("referenceid") int enteredRef, ModelMap model,HttpServletRequest request) {
		/* @RequestParam("otp") int ootp, */
		Registeration list3 = regserv.getCandidatesByreferenceID(enteredRef);
		System.out.println("Mailid is --> " + list3.getMailid());
		System.out.println("Phonenumber is --> " + list3.getPhonenumber());
		System.out.println("Reference id -- > "+ list3.getReferenceid());
		
		  int ref = 0; 
		  
		/* ref = Integer.parseInt(list3.getReferenceid()); */
		  System.out.println(ref);
		  
		  if(list3.getReferenceid() == null) {
			  return new ModelAndView("dammy","listme",list3);
			 
		/* CREATE ONE MORE METHOD FOR OTP IN SERVICE LAYER */

		 

		/*
		 * if(otp==ootp) { return new ModelAndView("admission_form_fill",
		 * "listme",list3); }
		 */

		// regserv.sendReferrenceId(list3.getPhonenumber(),otp);
		// model.addAttribute("referenceid",new Registeration());
		// model.addAttribute("candidate_refid", new Registeration());
		// model.addAttribute("register", new Registeration());
		// model.addAttribute("phonenumber",list3.getPhonenumber());

		// System.out.println(list3.getPhonenumber());
		// System.out.println(list3.getPhonenumber());

		/* return new ModelAndView("dammy", "listme", list3); */
		/* return "forward:mobilenumbers/{phonenumber}/otp"; */
		
	 }
	  else {
			/* ref = Integer.parseInt(list3.getReferenceid()); */
		  int otp = (int) (Math.random() * 9000) + 1000;
			
			System.out.println("OTP is:" + otp);

			regserv.saveOTP(otp,enteredRef);
			regserv.sendLoginCandidateOtpViaMail(list3.getMailid(),otp); 
			model.addAttribute("candidateAdmission", new Registeration());
			model.addAttribute("verifyOTPMA", new Registeration());
			return new ModelAndView("verifyOTP","listme",list3);
		  }
	 
			
		/* return new ModelAndView("verifyOTP","disp",list3); */
	}

	
	
	@GetMapping("/verify")
	public ModelAndView displayAdmissionForm(@RequestParam("otp") int otp,@RequestParam("referenceid") int refer, ModelMap model) {
		/* @RequestParam("referenceid") int refer, */
		
		System.out.println("Entered OTP is:" + otp);
		 System.out.println("Referenceid is : "+refer); 
		 
		model.addAttribute("verifyOTPMA", new Registeration());
		model.addAttribute("candidateAdmission", new Registeration());
		
		Registeration getOTP = regserv.getOTP(refer);
		System.out.println("OTP from db --> "+ getOTP.getOtp());
		
		/*Registeration list4 = regserv.getCandidatesByreferenceID(refer);*/
		/*
		 * Registeration list3 = regserv.getCandidatesByreferenceID(otp); return new
		 * ModelAndView("dammy", "listme", list3);
		 */
		Registeration list3 = regserv.getCandidatesByreferenceID(refer);
		
		if(otp == getOTP.getOtp() ) {
			
			return new ModelAndView("admission_form_fill","listme",list3);
		}
		/*return new ModelAndView("admission_form_fill","candi",list4);}*/
		else
			return new ModelAndView("dammy","listme",list3);
		/* return new ModelAndView("dammy","listme",list4); */	
	}

	/*
	 * @GetMapping("/verify") public String verify() {
	 * System.out.println("Entered OTP is:"+otp); Registeration list3 =
	 * regserv.getCandidatesByreferenceID(otp); return new ModelAndView("dammy",
	 * "listme", list3); return "verifyOTP"; }
	 * 
	 */

	@GetMapping("/candidate-admission-form")
	public String admission(Model model) {
		/*
		 * List<Registeration> list2=regserv.getRegisteration();
		 * System.out.println(list2.toString());
		 */
		model.addAttribute("candidateAdmission", new Registeration());
		model.addAttribute("register", new Registeration());

		return "/admission_form_fill";
	}

	@GetMapping("/screening-dashboard")
	public String candidateScreening(Model model) {
		/*
		 * List<Registeration> list2=regserv.getRegisteration();
		 * System.out.println(list2.toString());
		 */
		// model.addAttribute("candidateAdmission", new Registeration());
		model.addAttribute("register", new Registeration());
		// model.addAttribute("candidateAdmission", new Registeration());

		return "/screening-dashboard";
	}

	@PostMapping("/candidate-admission-form")
	public String saveAdmissionForm(@ModelAttribute("candidateAdmission") Registeration re, BindingResult result,
			ModelMap model) {
		model.addAttribute("candidateAdmission", new Registeration());
		model.addAttribute("register", new Registeration());
		regserv.saveAdmission(re);
		System.out.println(re.getClass());
		return "/admission_success";
	}

	@GetMapping("/htmltesting")
	public String candidate(Model model) {
		/*
		 * List<Registeration> list2=regserv.getRegisteration();
		 * System.out.println(list2.toString());
		 */
		// model.addAttribute("candidateAdmission", new Registeration());
		model.addAttribute("register", new Registeration());
		// model.addAttribute("candidateAdmission", new Registeration());

		return "/htmltesting";
	}

}
