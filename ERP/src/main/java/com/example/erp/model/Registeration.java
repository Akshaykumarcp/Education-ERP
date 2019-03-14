package com.example.erp.model;

import java.io.Serializable;     

import javax.persistence.Id;
/*import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;*/

public class Registeration implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	private int id;
	
	private String referenceid;
	
	private int otp;
	
	public int getOtp() {
		return otp;
	}
	public void setOtp(int otp) {
		this.otp = otp;
	}
	public String getReferenceid() {
		return referenceid;
	}
	public void setReferenceid(String referenceid) {
		this.referenceid = referenceid;
	}
	/*
	 * @NotNull(message="Not valid")
	 * 
	 * @Size(min=3, max=30, message="Enter value")
	 */
	private String fullname;
	
	/* @javax.validation.constraints.NotNull(message="Not valid") */
	private String phonenumber;
	
	
	/*
	 * @Email
	 * 
	 * @NotNull(message="Not valid")
	 * 
	 * @Size(min=4, max=30)
	 */
	private String mailid;
	
	/* @NotNull */
	private String course;
	
	private String dob;
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_phonenumber() {
		return p_phonenumber;
	}
	public void setP_phonenumber(String p_phonenumber) {
		this.p_phonenumber = p_phonenumber;
	}
	public String getP_mailid() {
		return p_mailid;
	}
	public void setP_mailid(String p_mailid) {
		this.p_mailid = p_mailid;
	}
	public String getP_address() {
		return p_address;
	}
	public void setP_address(String p_address) {
		this.p_address = p_address;
	}
	public String getSslc_board() {
		return sslc_board;
	}
	public void setSslc_board(String sslc_board) {
		this.sslc_board = sslc_board;
	}
	public String getS_percentage() {
		return s_percentage;
	}
	public void setS_percentage(String s_percentage) {
		this.s_percentage = s_percentage;
	}

	public String getPuc_board() {
		return puc_board;
	}
	public void setPuc_board(String puc_board) {
		this.puc_board = puc_board;
	}
	public String getP_percentage() {
		return p_percentage;
	}
	public void setP_percentage(String p_percentage) {
		this.p_percentage = p_percentage;
	}
	public String getS_yop() {
		return s_yop;
	}

	public void setS_yop(String s_yop) {
		this.s_yop = s_yop;
	}

	public String getP_yop() {
		return p_yop;
	}

	public void setP_yop(String p_yop) {
		this.p_yop = p_yop;
	}

	public String getGraduate_board() {
		return graduate_board;
	}
	public void setGraduate_board(String graduate_board) {
		this.graduate_board = graduate_board;
	}
	public String getG_percentage() {
		return g_percentage;
	}
	public void setG_percentage(String g_percentage) {
		this.g_percentage = g_percentage;
	}
	public String getG_yop() {
		return g_yop;
	}
	public void setG_yop(String g_yop) {
		this.g_yop = g_yop;
	}
	public String getCourse_type() {
		return course_type;
	}
	public void setCourse_type(String course_type) {
		this.course_type = course_type;
	}
	public String getFirst_language() {
		return first_language;
	}
	public void setFirst_language(String first_language) {
		this.first_language = first_language;
	}
	public String getQuota_caste() {
		return quota_caste;
	}
	public void setQuota_caste(String quota_caste) {
		this.quota_caste = quota_caste;
	}
	public String getEntrance_exam() {
		return entrance_exam;
	}
	public void setEntrance_exam(String entrance_exam) {
		this.entrance_exam = entrance_exam;
	}
	public String getR_no() {
		return r_no;
	}
	public void setR_no(String r_no) {
		this.r_no = r_no;
	}
	public String getR_marks() {
		return r_marks;
	}
	public void setR_marks(String r_marks) {
		this.r_marks = r_marks;
	}
	public String getEntrance_exam2() {
		return entrance_exam2;
	}
	public void setEntrance_exam2(String entrance_exam2) {
		this.entrance_exam2 = entrance_exam2;
	}
	public String getR_no2() {
		return r_no2;
	}
	public void setR_no2(String r_no2) {
		this.r_no2 = r_no2;
	}
	public String getR_marks2() {
		return r_marks2;
	}
	public void setR_marks2(String r_marks2) {
		this.r_marks2 = r_marks2;
	}
	public String getQuota_sports() {
		return quota_sports;
	}
	public void setQuota_sports(String quota_sports) {
		this.quota_sports = quota_sports;
	}
	public String getQuota_speciallyenabled() {
		return quota_speciallyenabled;
	}
	public void setQuota_speciallyenabled(String quota_speciallyenabled) {
		this.quota_speciallyenabled = quota_speciallyenabled;
	}
	private String gender;
	private String nationality;
	private String caste;
	private String address;
	private String p_name;
	private String p_phonenumber;
	private String p_mailid;
	private String p_address;
	private String sslc_board;
	private String s_percentage;
	private String s_yop;
	private String puc_board;
	private String p_percentage;
	private String p_yop;
	private String graduate_board;
	private String g_percentage;
	private String g_yop;
	private String course_type;
	private String first_language;
	private String quota_caste;
	private String entrance_exam;
	private String r_no;
	private String r_marks;
	private String entrance_exam2;
	private String r_no2;
	private String r_marks2;
	private String quota_sports;
	private String quota_speciallyenabled;
	private String status;
	/*
	 * private String course; private String course; private String course; private
	 * String course;
	 */
	
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getFullname() {
		return fullname;
	}
	
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getMailid() {
		return mailid;
	}
	public void setMailid(String mailid) {
		this.mailid = mailid;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public void setFullname(String fullname) {
	
		this.fullname = fullname;
		
	}
	

	
}
