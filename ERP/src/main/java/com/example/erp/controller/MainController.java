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
import com.example.erp.service.admin.AdminService;

@Controller
@SessionAttributes("candidate")
public class MainController {

	private String message;
	String success;
	String loginError;
	String loginSuccess;
	String verifyOtpError;

	@Autowired
	private RegisterationService regserv;

	@Autowired
	private InterviewDefinitionService intser;
	
	@Autowired
	private RestTemplate restTemplate;
	
	@Autowired
	private AdminService adminservice;

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
		
		/* message=null; success=null; */
		 
		model.addAttribute("message", message);
		model.addAttribute("success", success);
		
		message=null; success=null;
		model.addAttribute("Registeration", new Registeration());
		model.addAttribute("programs", intser.retriveAllProgramType());
		/*
		 * model.addAttribute("fromCourseEntry",adminservice.
		 * retriveAdminProgramTypeProgramCourseFromCourseEntry());
		 */
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
		model.addAttribute("Reg", new Registeration());
		success=null;
		
		
		model.addAttribute("loginCandi", new Registeration());

		String url = "https://www.google.com/recaptcha/api/siteverify";
		String params = "?secret=6LeJ9Y4UAAAAAI4GXvmTWcGWOvMG3rLtPmNYE55W&response="+captchaResponse;

		ReCaptchaResponse reCaptchaResponse = restTemplate.exchange(url +params, HttpMethod.POST, null, ReCaptchaResponse.class).getBody();
		
		 if(reCaptchaResponse.isSuccess()) { 
		 System.out.println("success before --> "+ success);
		regserv.save(Registeration);
		// regserv.sendRef(id);
		/*
		 * regserv.sendReferrenceIdViaMsg(Registeration.getPhonenumber(),Registeration.
		 * getReferenceid());
		 */
			
			/* UNCOMMENT BELOW CODE TO SEND REFERENCE ID TO REGISTERED MAIL ID */
		
			
			/*
			 * regserv.sendReferrenceIdViaMail(Registeration.getMailid(),
			 * Registeration.getReferenceid());
			 */
			 
			 
			 
		success = "how";
		System.out.println("after assigning value to success -->"+ success);
			/* redirect:/ */
		return "redirect:/ ";
		 }
		  else
		  {
			  model.addAttribute("Registeration", new Registeration());
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
		loginError = null;
		// Registeration logincandi = new Registeration();
		model.addAttribute("loginCandi", new Registeration());
		model.addAttribute("loginError", loginError);
		model.addAttribute("loginSuccess", loginSuccess);
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
	
	@ModelAttribute("natioanality")
	public List<String> initializeNationality() {

		List<String> nation = new ArrayList<String>();
		nation.add("Inidan");
		nation.add("Australia");
		nation.add("New Zealand");
	
		return nation;
	}
	
	
	@ModelAttribute("courses")
	public List<String> initializeCountries() {

		List<String> course = new ArrayList<String>();
		course.add("BCA");
		course.add("BBM");
		course.add("BCOM");
	
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
		firstLanguage.add("Spanish");
		firstLanguage.add("Chinese ");
		firstLanguage.add("German");
		firstLanguage.add("Portuguese");
		return firstLanguage;
	}

	@ModelAttribute("caste")
	public List<String> initializeCaste() {
		List<String> caste = new ArrayList<String>();
		caste.add("ST");
		caste.add("SC");
		caste.add("OBC");
		caste.add("General");
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
		loginError = null;
		Registeration list3 = regserv.getCandidatesByreferenceID(enteredRef);
		System.out.println("Mailid is --> " + list3.getMailid());
		System.out.println("Phonenumber is --> " + list3.getPhonenumber());
		System.out.println("Reference id -- > "+ list3.getReferenceid());
		
		  int ref = 0; 
		  
		/* ref = Integer.parseInt(list3.getReferenceid()); */
		  System.out.println(ref);
		  
		  if(list3.getReferenceid() == null) {
			 model.addAttribute("loginError", loginError); 
			  System.out.println("loginerror value before assigning-->"+loginError);
			  loginError = "referrenceid is null";
			  System.out.println("loginerror value after assigning-->"+loginError);
			  return new ModelAndView("Login_candidate","loginError",loginError);
			 
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
		  
		  
			/* model.addAttribute("loginSuccess", loginSuccess); */
			/* ref = Integer.parseInt(list3.getReferenceid()); */
		  int otp = (int) (Math.random() * 9000) + 1000;
			
			System.out.println("OTP is:" + otp);
System.out.println("loginsuccss b4 assigning -->"+loginSuccess);
			regserv.saveOTP(otp,enteredRef);

			/* UNCOMMENT BELOW CODE TO SEND OTP VIA MAIL */
			
			/* regserv.sendLoginCandidateOtpViaMail(list3.getMailid(),otp); */
			
			model.addAttribute("candidateAdmission", new Registeration());
			model.addAttribute("verifyOTPMA", new Registeration());
			loginSuccess = "yeah";
			model.addAttribute("loginSuccess", loginSuccess);
			System.out.println("loginsuccss after assigning -->"+loginSuccess);
			return new ModelAndView("verifyOTP","listme",list3);
		  }
	 
			
		/* return new ModelAndView("verifyOTP","disp",list3); */
	}

	
	
	@GetMapping("/verify")
	public ModelAndView displayAdmissionForm(@RequestParam("otp1") int otp1,@RequestParam("otp2") int otp2,
			@RequestParam("otp3") int otp3,@RequestParam("otp4") int otp4,@RequestParam("referenceid") int refer, ModelMap model) {
		/* @RequestParam("referenceid") int refer, */
		
		System.out.println("Entered OTP is:" + otp1 + ""+otp2+""+otp3+""+otp4);
		 System.out.println("Referenceid is : "+refer); 
		 verifyOtpError = null;
		model.addAttribute("verifyOTPMA", new Registeration());
		model.addAttribute("candidateAdmission", new Registeration());
		model.addAttribute("verifyOtpError", verifyOtpError);
		Registeration getOTP = regserv.getOTP(refer);
		System.out.println("OTP from db --> "+ getOTP.getOtp());
		
		/*Registeration list4 = regserv.getCandidatesByreferenceID(refer);*/
		/*
		 * Registeration list3 = regserv.getCandidatesByreferenceID(otp); return new
		 * ModelAndView("dammy", "listme", list3);
		 */
		Registeration list3 = regserv.getCandidatesByreferenceID(refer);
		
		int k = Integer.valueOf(String.valueOf(otp1) + String.valueOf(otp2)+ String.valueOf(otp3)+ String.valueOf(otp4));
		System.out.println("value if concatinated entered otp values"+k);
		
		if(k == getOTP.getOtp() ) {
			
			return new ModelAndView("admission_form_fill","listme",list3);
		}
		/*return new ModelAndView("admission_form_fill","candi",list4);}*/
		else
			verifyOtpError="invalid otp";
			return new ModelAndView("verifyOTP","verifyOtpError",verifyOtpError);
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
	public String admission(ModelMap model) {
		/*
		 * List<Registeration> list2=regserv.getRegisteration();
		 * System.out.println(list2.toString());
		 */
		model.addAttribute("candidateAdmission", new Registeration());
		model.addAttribute("register", new Registeration());
		model.put("countries", regserv.retriveAllCountries());
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
	public String saveAdmissionForm(@ModelAttribute("candidateAdmission") Registeration re,
			ModelMap model) {
		model.addAttribute("candidateAdmission", new Registeration());
		model.addAttribute("register", new Registeration());
		model.addAttribute("phone", re.getPhonenumber());
		model.addAttribute("mail", re.getMailid());
		
		regserv.saveAdmission(re);
		
		return "/admission_success";
	}


}
