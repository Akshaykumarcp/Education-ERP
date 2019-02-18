package com.example.erp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.erp.DAO.RegisterationDAO;
import com.example.erp.model.Registeration;

@Service
public class RegisterationService implements IregisterationService{
	
	@Autowired
	RegisterationDAO regi;

	
	public void save(Registeration regis) {
		// TODO Auto-generated method stub
		regi.save(regis);
		
	}
	
	public Registeration getCandidatesByreferenceID(int ref)
	{
		return regi.getCandidatesByreferenceID(ref);
	}

	public List<Registeration> getAllStudents() {
		// TODO Auto-generated method stub
		return regi.getAllStudents();  
	}

	
	public Registeration getStudentById(int id) {
		// TODO Auto-generated method stub
		return regi.getStudentById(id);
	}

	
	public void updateMe(Registeration req) {
		// TODO Auto-generated method stub
		 regi.updateMe(req);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		regi.delete(id);		
	}

	public Registeration  getStudentByRef(int ref) {
		return regi.getStudentByRef(ref);
		
	}

	public List<Registeration> getRegisteration() {
		
		// TODO Auto-generated method stub
		return regi.getRegisteration();
	}

	public void saveAdmission(Registeration re) {
		// TODO Auto-generated method stub
		regi.saveAdmission(re);
		
	}
	
	public void sendReferrenceId(String mobileNo, int referenceId) {
		try {
			
		} catch (Exception e) {
			
		}
	}

	

		

}
