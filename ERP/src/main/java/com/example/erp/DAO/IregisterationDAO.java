package com.example.erp.DAO;

import java.util.List;

import com.example.erp.model.Registeration;

public interface IregisterationDAO {
	
	public void save(Registeration r);
	public void saveAdmission(Registeration r);
	public List<Registeration> getAllStudents();
	public Registeration getStudentById(int id);
	//getCandidatesByreferenceID
	public Registeration getCandidatesByreferenceID(int ref);
	public void updateMe(Registeration r);
	public void delete(int id);

}
