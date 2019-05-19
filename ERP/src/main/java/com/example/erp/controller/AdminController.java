package com.example.erp.controller;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.erp.model.admin.AdminLogin;
import com.example.erp.model.admin.ApplicationNoEntry;
import com.example.erp.model.admin.CheckListEntry;
import com.example.erp.model.admin.CourseEntry;
import com.example.erp.model.admin.CurriculumEntry;
import com.example.erp.model.admin.ProgramEntry;
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
	public String getAdminDetails(@RequestParam("mailid") String mailid, @RequestParam("password") String password,
			ModelMap model) {

		/* loginError = null; */
		AdminLogin adminlogin = webservice.getAdminDetails();
		System.out.println(" Admin Mailid from DB--> " + adminlogin.getMailid());
		System.out.println(" Admin Password from DB --> " + adminlogin.getPassword());
		System.out.println(" Admin Mailid from Form--> " + mailid);
		System.out.println(" Admin Password from Form --> " + password);

		String adminmail = adminlogin.getMailid();
		String adminpassword = adminlogin.getPassword();

		if (adminmail.equals(mailid) && adminpassword.equals(password)) {
			System.out.println("Right");
			model.put("adminname", adminlogin.getUsername());
			model.put("adminmail", adminlogin.getMailid());
			return "admin/index";
		} else
			error = "Invalid Credentials";
		System.out.println(error);
		model.addAttribute("error", error);
		return "admin/login";
	}

	@GetMapping("/programtype")
	public String adminprogramType() {
		return "admin/programType";
	}

	@GetMapping("/programEntry")
	public String adminprogramEntry(ModelMap model) {
		ProgramType p = new ProgramType();
		model.addAttribute("programty", p);
		model.addAttribute("programtypes", adminservice.retriveAllAdminProgramType());
		return "admin/programEntry";
	}

	@GetMapping("/courseEntry")
	public String adminCourseEntry(ModelMap model) {
		model.addAttribute("adminProgramTypesAndProgramFromProgramConfig", adminservice.retriveAllAdminProgramTypeAndProgramFromProgramConfig());
		return "admin/course_entry";
	}

	@GetMapping("/courseToDepartment")
	public String courseToDepartment(ModelMap model) {
		model.addAttribute("assignCourse", new CourseEntry());
		return "admin/course_to_department";
	}

	@GetMapping("/applicationNoEntry")
	public String applicationNoEntry(ModelMap model) {
		ProgramEntry pe = new ProgramEntry();
 		model.addAttribute("applicationNo", pe);
		model.addAttribute("fromCourseEntry", adminservice.retriveAdminProgramTypeProgramCourseFromCourseEntry());
		model.addAttribute("fromProgramConfig", adminservice.academicYearFromProgramConfig());
		return "admin/application_no_entry";
	}

	@GetMapping("/curriculumScheme")
	public String curriculumScheme(ModelMap model) {
		ProgramEntry pe = new ProgramEntry();
 		model.addAttribute("applicationNo", pe);
		model.addAttribute("fromCourseEntry", adminservice.retriveAdminProgramTypeProgramCourseFromCourseEntry());
		model.addAttribute("fromProgramConfig", adminservice.academicYearFromProgramConfig());
		return "admin/curriculum_scheme";
	}

	@GetMapping("/checkListEntry")
	public String checkListEntry(ModelMap model) {
		CheckListEntry cl = new CheckListEntry();
		model.addAttribute("applicationNo", cl);
		model.addAttribute("fromCourseEntry", adminservice.retriveAdminProgramTypeProgramCourseFromCourseEntry());
		model.addAttribute("fromProgramConfig", adminservice.academicYearFromProgramConfig());
		return "admin/check_list_entry";
	}

	@GetMapping("/checkListDocuments")
	public String checkListDocuments() {
		
		return "admin/check_list_documents";
	}

	@GetMapping("/offlineApplication")
	public String offlineApplication() {
		return "admin/offline_application";
	}

	@GetMapping("/homepage")
	public String homepage() {
		return "admin/index";
	}
	
	@GetMapping("/onlineApplicationForm")
	public String onlineApplication() {
		return "admin/online_application_form";
	}
	
	@GetMapping("/onlineApplicationForm2")
	public String onlineApplicationw() {
		return "admin/online_application_form2";
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

	@PostMapping("/loadAdminProgramEntry")
	@ResponseBody
	public void loadProgramEntry(@RequestBody ProgramEntry programentry) {
		adminservice.saveProgramEntry(programentry.getProgramType(), programentry.getProgramCode(),
				programentry.getAdditionalInformation(), programentry.getAttendanceWithRegistrationNo(),
				programentry.getEntranceDetails(), programentry.getExtraCurriculum(), programentry.getHeightAndWeight(),
				programentry.getFamilyBackground(), programentry.getIsOnlineApplicationOpen(),
				programentry.getIsTCDisplay(), programentry.getKnownLanuguage(), programentry.getLateralDetails(),
				programentry.getTransferCourse(), programentry.getTrainingShortCourse(), programentry.getStream(),
				programentry.getSeatNoGenerationRequied(), programentry.getProgramNameInCertificate(),
				programentry.getProgram(), programentry.getOnlineApplicationYear(), programentry.getMotherTongue(),
				programentry.getSecondLanguage());
	}

	@PostMapping("/loadAdminCourseEntry")
	@ResponseBody
	public void loadCourseEntry(@RequestBody CourseEntry courseentry) {
		adminservice.saveCourseEntry(courseentry.getProgramType(), courseentry.getProgram(),
				courseentry.getCourseCode(), courseentry.getCourseName(), courseentry.getMaximumIntake(),
				courseentry.getCourseNameInCertificate(), courseentry.getPayCode(),
				courseentry.getCourseNameForSemMarkscard(), courseentry.getApplicattionFee(),
				courseentry.getApplicationFeeInternational(), courseentry.getWorkExperience(),
				courseentry.getIsDetailMarksPrint(), courseentry.getWorkExperienceManditory(),
				courseentry.getAppearInOnline(), courseentry.getApplicationProcessingSms(),
				courseentry.getOnlyForApplication(), courseentry.getBankNameForSmartcard(),
				courseentry.getBankFullName(), courseentry.getBankSection(), courseentry.getCourseCommencementDate(),
				courseentry.getCampus(), courseentry.getNoOfMidsemRepeatAttempts(), courseentry.getParentDepartment(),
				courseentry.getAttendanceMarksCalculatedBy(), courseentry.getIndianNationals(),
				courseentry.getNriAndSaarc(), courseentry.getForiegnNationals(), courseentry.getTotalSeats());
	}
	
	@PostMapping("/loadAdminApplicationNoEntry")
	@ResponseBody
	public void loadAdminApplicationNoEntry(@RequestBody ApplicationNoEntry applicationnoentry) {
		adminservice.saveloadAdminApplicationNoEntry(applicationnoentry);
	}
	
	@PostMapping("/loadAdminCurriculumEntry")
	@ResponseBody
	public void loadAdminCurriculumEntry(@RequestBody CurriculumEntry curriculumentry) {
		adminservice.loadAdminCurriculumEntry(curriculumentry);
	}

	@PostMapping("/loadAdminChecklistEntry")
	@ResponseBody
	public void loadAdminChecklistEntry(@RequestBody CheckListEntry checklistentry) {
		adminservice.loadAdminChecklistEntry(checklistentry);
	}
	
	@GetMapping("/getAllProgramType")
	@ResponseBody
	public List<ProgramType> AllProgramType() {
		/* comp.save(complaint); */
		return adminservice.AllProgramType();

	}

	@GetMapping("/getAllProgramEntry")
	@ResponseBody
	public List<ProgramEntry> AllProgramEntry() {
		return adminservice.AllProgramEntry();
	}

	@GetMapping("/getAllCourseEntry")
	@ResponseBody
	public List<CourseEntry> getAllCourseEntry() {
		return adminservice.AllCourseEntry();
	}
	
	@GetMapping("/getAllApplicationNoEntry")
	@ResponseBody
	public List<ApplicationNoEntry> getAllApplicationNoEntry() {
		return adminservice.getAllApplicationNoEntry();
	}
	
	@GetMapping("/getAllCurriculumEntry")
	@ResponseBody
	public List<CurriculumEntry> getAllCurriculumEntry() {
		return adminservice.getAllCurriculumEntry();
	}
	
	@GetMapping("/getAllChecklistEntry")
	@ResponseBody
	public List<CheckListEntry> getAllChecklistEntry() {
		return adminservice.getAllChecklistEntry();
	}

	/*
	 * @RequestMapping(value = "/deleteProgramType/{id}", method =
	 * RequestMethod.GET) public ModelAndView delete(@PathVariable int id) {
	 * adminservice.deleteProgramType(id); return new
	 * ModelAndView("redirect:/programtype"); }
	 */

	@RequestMapping(value = "/deleteProgramType/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public String delete(@PathVariable int id) {
		adminservice.deleteProgramType(id);
		return "Deleted Successfully";
	}

	@RequestMapping(value = "/deleteProgramConfig/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public String deleteProgramConfig(@PathVariable int id) {
		adminservice.deleteProgramConfig(id);
		return "Deleted Successfully";
	}

	@RequestMapping(value = "/deleteCourseEntryBy/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public String deleteCourseEntry(@PathVariable int id) {
		adminservice.deleteCourseEntry(id);
		return "Deleted Successfully";
	}
	
	@RequestMapping(value = "/deleteApplicationNoEntryBy/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public String deleteApplicationNoEntryBy(@PathVariable int id) {
		adminservice.deleteApplicationNoEntryBy(id);
		return "Deleted Successfully";
	}
	
	@RequestMapping(value = "/deleteCurriculumEntryByEntryBy/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public String deleteCurriculumEntryBy(@PathVariable int id) {
		adminservice.deleteCurriculumEntryBy(id);
		return "Deleted Successfully";
	}
	
	@RequestMapping(value = "/deleteChecklistEntryBy/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public String deleteChecklistEntryByEntryBy(@PathVariable int id) {
		adminservice.deleteChecklistEntryByEntryBy(id);
		return "Deleted Successfully";
	}
	
	  @RequestMapping(value = "/getProgramTypeById/{id}", method =  RequestMethod.GET)
	  @ResponseBody
	  public ProgramType getProgramTypeByID(@PathVariable int id) 
	  {  
		  return adminservice.getProgramTypeById(id); 
	  }
	  
	  @RequestMapping(value = "/getProgramConfigById/{id}", method =  RequestMethod.GET)
	  @ResponseBody
	  public ProgramEntry getProgramConfigById(@PathVariable int id) 
	  {  
		  return adminservice.getProgramConfigById(id); 
	  }
	  
	  @RequestMapping(value = "/getCourseEntryById/{id}", method =  RequestMethod.GET)
	  @ResponseBody
	  public CourseEntry getCourseEntryById(@PathVariable int id) 
	  {  
		  return adminservice.getCourseEntryById(id); 
	  }
	  
	  @RequestMapping(value = "/getApplicationNoEntryById/{id}", method =  RequestMethod.GET)
	  @ResponseBody
	  public ApplicationNoEntry getApplicationNoEntryById(@PathVariable int id) 
	  {  
		  return adminservice.getApplicationNoEntryById(id); 
	  }
	  
	  @RequestMapping(value = "/getCurriculumEntryById/{id}", method =  RequestMethod.GET)
	  @ResponseBody
	  public CurriculumEntry getCurriculumEntryById(@PathVariable int id) 
	  {  
		  return adminservice.getCurriculumEntryById(id); 
	  }
	  
	  @RequestMapping(value = "/getChecklistEntryById/{id}", method =  RequestMethod.GET)
	  @ResponseBody
	  public CheckListEntry getChecklistEntryById(@PathVariable int id) 
	  {  
		  return adminservice.getChecklistEntryById(id); 
	  }
	  
	  
	@PutMapping("/updateProgramTypeById/{id}")
	@ResponseBody
	public void updateProgramType(@RequestBody ProgramType programtype, @PathVariable int id) {
		/* comp.save(complaint); */
		System.out.println("loadprogram from admin controller");
		System.out.println(programtype);
		System.out.println(programtype.getProgramType());
		adminservice.updateProgramType(id, programtype.getProgramType());
	}

	@PutMapping("/updateProgramConfigById/{id}")
	@ResponseBody
	public void updateProgramConfig(@RequestBody ProgramEntry programentry, @PathVariable int id) {
		adminservice.updateProgramConfig(id, programentry);
	}
	
	@PutMapping("/updateCourseEntryById/{id}")
	@ResponseBody
	public void updateCourseEntryById(@RequestBody CourseEntry courseentry, @PathVariable int id) {
		adminservice.updateCourseEntryById(id, courseentry);
	}
	
	@PutMapping("/updateApplicationNoEntryById/{id}")
	@ResponseBody
	public void updateApplicationNoEntryById(@RequestBody ApplicationNoEntry applicationnoentry, @PathVariable int id) {
		adminservice.updateApplicationNoEntryById(id, applicationnoentry);
	}
	
	@PutMapping("/updateCurriculumEntryById/{id}")
	@ResponseBody
	public void updateCurriculumEntryById(@RequestBody CurriculumEntry curriculumentry, @PathVariable int id) {
		adminservice.updateCurriculumEntryById(id, curriculumentry);
	}
	
	@PutMapping("/updateChecklistEntryById/{id}")
	@ResponseBody
	public void updateChecklistEntryById(@RequestBody CheckListEntry checklistentry, @PathVariable int id) {
		adminservice.updateChecklistEntryById(id, checklistentry);
	}
	
	@GetMapping("/courseToDepartment/{id}")
	public String assignnDepartment(@PathVariable int id, ModelMap model) {
		System.out.println("in");
		
		  CourseEntry ad = adminservice.getCourseEntryById(id);
		  System.out.println("in2");
		  System.out.println("Get Student By ID object==" +
		  ad.toString()); 
		  model.addAttribute("assignCourse", ad);	 
		return "admin/course_to_department";
	}
	
	@RequestMapping(value = "/saveAssignDepartment", method = RequestMethod.POST)
	public String editSave(@ModelAttribute("assignCourse") CourseEntry ce,ModelMap mm) 
	{
		mm.addAttribute("assignCourse", new CourseEntry());
		System.out.println("id is" + ce.getId());
		adminservice.updateCourseEntry(ce);
		return "admin/course_entry";
	}
	
}
