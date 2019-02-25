package com.example.erp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.erp.DAO.InterviewDefintionDAO;
import com.example.erp.model.Courses;
import com.example.erp.model.InterviewDefinition;
import com.example.erp.model.ProgramType;
import com.example.erp.model.Registeration;

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


	public List<Courses> getProgramById(int id) {
		// TODO Auto-generated method stub
		
		return intedao.getProgramByID(id);
	}


	public List<InterviewDefinition> getAllInterviewDefintions() {
		// TODO Auto-generated method stub
		
		return intedao.getAllInterviewDefintions();
		
	}


	public void delete(int id) {
		// TODO Auto-generated method stub
		intedao.delete(id);
		
	}


	public InterviewDefinition getInterviewDefinitionById(int id) {
		// TODO Auto-generated method stub
		return intedao.getInterviewDefinitionById(id);
	}


	public void updateInterviewDefinition(InterviewDefinition inte) {
		// TODO Auto-generated method stub
		intedao.updateInterviewDefinition(inte);
		
	}


}
