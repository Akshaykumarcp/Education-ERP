package com.example.erp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.erp.DAO.InterviewDefintionDAO;
import com.example.erp.model.Courses;
import com.example.erp.model.InterviewDefinition;
import com.example.erp.model.ProgramType;

@Service
public class InterviewDefinitionService implements IinterviewDefinition {

	@Autowired
	private InterviewDefintionDAO intedao;
	@Override
	public void save(InterviewDefinition inte) {
		
		intedao.save(inte);
	}
	
	
	@Override
	public List<ProgramType> retriveAllProgramType() {
	
		return intedao.retriveAllProgramType();
	}


	public Courses getProgramById(int id) {
		// TODO Auto-generated method stub
		
		return intedao.getProgramByID(id);
	}

}
