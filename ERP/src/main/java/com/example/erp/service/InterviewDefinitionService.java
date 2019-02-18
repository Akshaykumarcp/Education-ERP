package com.example.erp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.erp.DAO.InterviewDefintionDAO;
import com.example.erp.model.InterviewDefinition;

@Service
public class InterviewDefinitionService implements IinterviewDefinition {

	@Autowired
	private InterviewDefintionDAO intedao;
	@Override
	public void save(InterviewDefinition inte) {
		
		intedao.save(inte);
	}

}
