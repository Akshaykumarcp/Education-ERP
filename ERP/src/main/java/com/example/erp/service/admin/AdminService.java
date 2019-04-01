package com.example.erp.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.erp.DAO.admin.ProgramTypeDAO;
import com.example.erp.model.admin.ProgramType;

@Service
public class AdminService {

	@Autowired
	private ProgramTypeDAO programty;
	
	public void save(String programtype) {
	 programty.save(programtype);
	}

	public List<ProgramType>  AllProgramType() {
		return programty.AllProgramType();
	}

	public void deleteProgramType(int id) {
		programty.deleteProgramType(id);
	}

	

}
