package com.example.erp.model.admin;

import java.util.Date;

import javax.persistence.Id;

public class OnlineApplicationForm {
	
	@Id
	private int id;
	private String programType;
	private String program;
	private String firstPreference;
	private String CandiateName;
	private String DOB;
	private String studentCategory;
	private String phoneNumber;
	private String eMail;
	private String confirmEmail;
	private String termsAndCondition;
	
	public String getTermsAndCondition() {
		return termsAndCondition;
	}
	public void setTermsAndCondition(String termsAndCondition) {
		this.termsAndCondition = termsAndCondition;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProgramType() {
		return programType;
	}
	public void setProgramType(String programType) {
		this.programType = programType;
	}
	public String getProgram() {
		return program;
	}
	public void setProgram(String program) {
		this.program = program;
	}
	public String getFirstPreference() {
		return firstPreference;
	}
	public void setFirstPreference(String firstPreference) {
		this.firstPreference = firstPreference;
	}
	public String getCandiateName() {
		return CandiateName;
	}
	public void setCandiateName(String candiateName) {
		CandiateName = candiateName;
	}

	
	
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getStudentCategory() {
		return studentCategory;
	}
	public void setStudentCategory(String studentCategory) {
		this.studentCategory = studentCategory;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getConfirmEmail() {
		return confirmEmail;
	}
	public void setConfirmEmail(String confirmEmail) {
		this.confirmEmail = confirmEmail;
	}
	

}
