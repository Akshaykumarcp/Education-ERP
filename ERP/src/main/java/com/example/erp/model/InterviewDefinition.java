package com.example.erp.model;

import java.io.Serializable;

import javax.persistence.Id;

public class InterviewDefinition implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	private int id;
	private String programType;
	private String course;
	private String academicYear;
	private String interviewType;
	private String inCharge;
	
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
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getAcademicYear() {
		return academicYear;
	}
	public void setAcademicYear(String academicYear) {
		this.academicYear = academicYear;
	}
	public String getInterviewType() {
		return interviewType;
	}
	public void setInterviewType(String interviewType) {
		this.interviewType = interviewType;
	}
	public String getInCharge() {
		return inCharge;
	}
	public void setInCharge(String inCharge) {
		this.inCharge = inCharge;
	}
	

}
