package com.example.erp.service;

import java.util.List;

import com.example.erp.model.InterviewDefinition;
import com.example.erp.model.ProgramType;

public interface IinterviewDefinition {

	public void save(InterviewDefinition inte);
	public List<ProgramType> retriveAllProgramType();
	
}