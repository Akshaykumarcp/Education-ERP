package com.example.erp.service;

import java.util.List; 

import com.example.erp.model.Registeration;

public interface IregisterationService {

	public void save(Registeration regis);
	public void saveAdmission(Registeration regis);
	public List<Registeration> getAllStudents();
	public Registeration getStudentById(int id);
	public Registeration getStudentByRef(int ref);
	public void updateMe(Registeration r);
	public Registeration getCandidatesByreferenceID(int ref);
	
	/* Candidate Status Check */
	
	
}
