package com.example.erp.DAO;

import java.util.List;

import com.example.erp.model.InterviewDefinition;
import com.example.erp.model.ProgramType;

public interface IinterviewDefinitionDAO {

	public void save(InterviewDefinition inte);
	public List<ProgramType> retriveAllProgramType();
	
}
