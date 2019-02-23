package com.example.erp.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import com.example.erp.model.Courses;
import com.example.erp.model.InterviewDefinition;
import com.example.erp.model.ProgramType;
import com.example.erp.model.Registeration;

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

	@Override
	public List<ProgramType> retriveAllProgramType() {

		return template.query("select * from programtype",new ResultSetExtractor<List<ProgramType>>(){  
		    
		     public List<ProgramType> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<ProgramType> list=new ArrayList<ProgramType>();  
		        while(rs.next()){  
		        	ProgramType e=new ProgramType();  
		        e.setId(rs.getInt(1));  
		    
		        e.setProgramname(rs.getString(2));  
		       
		       		 
		        list.add(e);  
		        System.out.println("All program type"+(e.getId()+""+e.getProgramname()));
		        }  
		        return list;  
		        }  
		    });  		
	}

	public Courses getProgramByID(int id) {
		// TODO Auto-generated method stub
		return template.query("select course from courses where p_id="+id,new ResultSetExtractor<Courses>(){
		    
		     public Courses extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		    	 //List<Registeration> list=new ArrayList<Registeration>();   
		    	 Courses e=new Courses();
		        while(rs.next()){  
		        	
		        	//e.setId(rs.getInt(1));  
		        	//e.setReferenceid(rs.getInt(2));  
			       // e.setFullname(rs.getString(3));  
			        e.setCourse(rs.getString(1));
			        
			        //e.setMailid(rs.getString(5));
			        //e.setCourse(rs.getString(6));  
			       // list.add(e);
		        }  
		        //System.out.println("phonenumber"+e.toString());
		        return e;  
		        }  
		    });  
		
	}

}
