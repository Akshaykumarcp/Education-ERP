package com.example.erp.DAO;

import javax.sql.DataSource; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.example.erp.model.InterviewDefinition;

@Service
public class InterviewDefintionDAO implements IinterviewDefinitionDAO{

	JdbcTemplate template;  
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public void save(InterviewDefinition inte) {
		String sql="insert into interviewdefinition(programtype,course,academicyear,interviewtype,incharge) values('"+inte.getProgramType()+"','"+inte.getCourse()+"','"+inte.getAcademicYear()+"','"+inte.getInterviewType()+"','"+inte.getInCharge()+"')";
		System.out.println(sql);
	     template.update(sql); 
		
	}

}
