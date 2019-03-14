package com.example.erp.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.erp.DAO.CandidateStatusDAO;
import com.example.erp.model.Registeration;

@Service
public class CandidateStatusService {

	@Autowired
	CandidateStatusDAO stat ; 
	
	public Registeration getCandidatesStatus(int ref)
	{
		return stat.getCandidatesStatus(ref); 
	}
}
