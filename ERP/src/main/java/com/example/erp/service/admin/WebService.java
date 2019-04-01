package com.example.erp.service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.erp.DAO.admin.AdminLoginDAO;
import com.example.erp.model.admin.AdminLogin;

@Service
public class WebService {

	@Autowired
private AdminLoginDAO adminlogindao;

	public AdminLogin getAdminDetails() {
		
		return adminlogindao.getAdminDetails();
	}
	
	

	
}
