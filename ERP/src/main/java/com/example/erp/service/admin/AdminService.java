package com.example.erp.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.erp.DAO.admin.ProgramTypeDAO;
import com.example.erp.model.Registeration;
import com.example.erp.model.admin.ApplicationNoEntry;
import com.example.erp.model.admin.CheckListEntry;
import com.example.erp.model.admin.CourseEntry;
import com.example.erp.model.admin.CurriculumEntry;
import com.example.erp.model.admin.InterviewDefinition;
import com.example.erp.model.admin.OnlineApplicationForm;
import com.example.erp.model.admin.ProgramEntry;
import com.example.erp.model.admin.ProgramType;

@Service
public class AdminService {

	@Autowired
	private ProgramTypeDAO programty;
	
	public void save(String programtype) {
	 programty.save(programtype);
	}

	public List<ProgramType>  AllProgramType() {
		return programty.AllProgramType();
	}

	public void deleteProgramType(int id) {
		programty.deleteProgramType(id);
	}

	public ProgramType getProgramTypeById(int id) {
		// TODO Auto-generated method stub
		return programty.getProgramTypeById(id);
	}

	/*
	 * public void saveProgramEntry(ProgramEntry programentry) {
	 * programty.saveProgramEntry(programentry); }
	 */

	public void saveProgramEntry(String programType, String programCode, String additionalInformation,
			String attendanceWithRegistrationNo, String entranceDetails, String extraCurriculum, String heightAndWeight,
			String familyBackground, String isOnlineApplicationOpen, String isTCDisplay, String knownLanuguage,
			String lateralDetails, String transferCourse, String trainingShortCourse, String stream,
			String seatNoGenerationRequied, String programNameInCertificate, String program,
			String onlineApplicationYear, String motherTongue,String secondLanguage) {
		programty.saveProgramEntry(programType,programCode,additionalInformation,attendanceWithRegistrationNo,
				entranceDetails,extraCurriculum,heightAndWeight,familyBackground,isOnlineApplicationOpen,
				isTCDisplay,knownLanuguage,lateralDetails,transferCourse,trainingShortCourse,stream,
				seatNoGenerationRequied,programNameInCertificate,program,onlineApplicationYear,motherTongue,secondLanguage);
	}

	public List<ProgramEntry> AllProgramEntry() {
		return programty.AllProgramEntry();
	}

	public List<ProgramType> retriveAllAdminProgramType() {
		return programty.retriveAllAdminProgramType();
	}

	public void saveCourseEntry(String programType, String program, int i, String courseName,
			int j, String courseNameInCertificate, int k, String courseNameForSemMarkscard,
			double d, double e, String workExperience,
			String isDetailMarksPrint, String workExperienceManditory, String appearInOnline,
			String applicationProcessingSms, String onlyForApplication, String bankNameForSmartcard,
			String bankFullName, String bankSection, String courseCommencementDate, String campus,
			String noOfMidsemRepeatAttempts, String ParentDepartment,String attendanceMarksCalculatedBy,int indianNationals,int nriAndSaarc,int foriegnNationals,int totalSeats) {
		programty.saveCourseEntry(programType,program,i,courseName,j,courseNameInCertificate,k,courseNameForSemMarkscard,
				d,e,workExperience,isDetailMarksPrint,workExperienceManditory,appearInOnline,applicationProcessingSms,
				onlyForApplication,bankNameForSmartcard,bankFullName,bankSection,courseCommencementDate,campus,noOfMidsemRepeatAttempts,ParentDepartment,attendanceMarksCalculatedBy,indianNationals,nriAndSaarc,foriegnNationals,totalSeats);
	}

	public List<CourseEntry> AllCourseEntry() {
		return programty.retriveAllAdminCourseType();
	}

	public void updateProgramType(int id, String programType) {
		programty.updateProgramType(id, programType);
	}

	public void updateProgramConfig(int id, ProgramEntry programentry) {
		programty.updateProgramConfig(id, programentry);
	}

	public void deleteProgramConfig(int id) {
		programty.deleteProgramConfig(id);
	}

	public ProgramEntry getProgramConfigById(int id) {
		return programty.getProgramConfigById(id);
	}

	public void deleteCourseEntry(int id) {
		programty.deleteCourseEntry(id);
	}

	public CourseEntry getCourseEntryById(int id) {
		return programty.getCourseEntryById(id);
	}


	public void updateCourseEntryById(int id, CourseEntry courseentry) {
		programty.updateCourseEntryById(id, courseentry);		
	}
	

	public List<ProgramEntry> retriveAllAdminProgramTypeAndProgramFromProgramConfig() {
		return programty.retriveAllAdminProgramTypeAndProgramFromProgramConfig();	}

	public void updateCourseEntry(CourseEntry ce) {
		programty.updateCourseEntry(ce);
	}

	public List<CourseEntry> retriveAdminProgramTypeProgramCourseFromCourseEntry() {
		return programty.retriveAdminProgramTypeProgramCourseFromCourseEntry();
	}

	public List<ProgramEntry> academicYearFromProgramConfig() {
		return programty.academicYearFromProgramConfig();
	}

	public void saveloadAdminApplicationNoEntry(ApplicationNoEntry applicationnoentry) {
		programty.saveloadAdminApplicationNoEntry(applicationnoentry);
	}

	public List<ApplicationNoEntry> getAllApplicationNoEntry() {
		return programty.getAllApplicationNoEntry();
	}

	public void deleteApplicationNoEntryBy(int id) {
		programty.deleteApplicationNoEntryBy(id);
	}

	public ApplicationNoEntry getApplicationNoEntryById(int id) {
		return programty.getApplicationNoEntryById(id);
	}

	public void updateApplicationNoEntryById(int id, ApplicationNoEntry applicationnoentry) {
		programty.updateApplicationNoEntryById(id, applicationnoentry);
	}

	public void loadAdminCurriculumEntry(CurriculumEntry curriculumentry) {
		programty.loadAdminCurriculumEntry(curriculumentry);
	}

	public List<CurriculumEntry> getAllCurriculumEntry() {
		return programty.getAllCurriculumEntry();
		
	}

	public void deleteCurriculumEntryBy(int id) {
		programty.deleteCurriculumEntryBy(id);
	}

	public CurriculumEntry getCurriculumEntryById(int id) {
		return programty.getCurriculumEntryById(id);
	}

	public void updateCurriculumEntryById(int id, CurriculumEntry curriculumentry) {
		programty.updateCurriculumEntryById(id, curriculumentry);
	}

	public void loadAdminChecklistEntry(CheckListEntry checklistentry) {
		programty.loadAdminChecklistEntry(checklistentry);
	}

	public List<CheckListEntry> getAllChecklistEntry() {
		return programty.getAllChecklistEntry();
	}

	public void deleteChecklistEntryByEntryBy(int id) {
		programty.deleteChecklistEntryByEntryBy(id);
	}

	public CheckListEntry getChecklistEntryById(int id) {
		return programty.getChecklistEntryById(id);
	}

	public void updateChecklistEntryById(int id, CheckListEntry checklistentry) {
		programty.updateChecklistEntryById(id,checklistentry);
	}

	public void saveonlineApplicationForm(OnlineApplicationForm oaf) {
		programty.saveonlineApplicationForm(oaf);
		
	}

	public void loadAdminInterviewDefinition(InterviewDefinition interviewdefinition) {
		programty.loadAdminInterviewDefinition(interviewdefinition);		
	}

	public List<InterviewDefinition> getAllInterviewDefinition() {
		return programty.getAllInterviewDefinition();
	}

	public void deleteInterviewDefinitionById(int id) {
		programty.deleteInterviewDefinitionById(id);
	}

	public void updateInterviewDefinitionById(int id, InterviewDefinition interviewdefinition) {
		programty.updateInterviewDefinitionById(id,interviewdefinition);
	}

	public InterviewDefinition getInterviewDefinitionById(int id) {
		return programty.getInterviewDefinitionById(id);
	}

	public List<InterviewDefinition> interviewTypeFromInterviewDefinition() {
		return programty.interviewTypeFromInterviewDefinition();
	}

	public List<Registeration> getStudentsByFilter(String course) {
		return programty.getStudentsByFilter(course);
	}

	public void updateStatus(String regisId) {
		programty.updateStatus(regisId);
	}


}
