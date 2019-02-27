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

	public List<Courses> getProgramByID(int id) {
		// TODO Auto-generated method stub
		return template.query("select course from courses where p_id="+id,new ResultSetExtractor<List<Courses>>(){
		    
		     public List<Courses> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		    	 //List<Registeration> list=new ArrayList<Registeration>();   
		    	
		    	 List<Courses> list=new ArrayList<Courses>(); 
		    	 
		        while(rs.next()){  
		        	Courses e=new Courses();
		        	//e.setId(rs.getInt(1));  
		        	//e.setReferenceid(rs.getInt(2));  
			       // e.setFullname(rs.getString(3));  
			        e.setCourse(rs.getString(1));
			        
			        //e.setMailid(rs.getString(5));
			        //e.setCourse(rs.getString(6));  
			        list.add(e);
		        }  
		        //System.out.println("phonenumber"+e.toString());
		        System.out.println(list.toString().length());
		        return list;  
		        }  
		    });  
		
	}

	public List<InterviewDefinition> getAllInterviewDefintions() {
		// TODO Auto-generated method stub

		return template.query("select * from InterviewDefinition",new ResultSetExtractor<List<InterviewDefinition>>(){  
		    
		     public List<InterviewDefinition> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<InterviewDefinition> list=new ArrayList<InterviewDefinition>();  
		        while(rs.next()){  
		        	InterviewDefinition e=new InterviewDefinition();  
				 e.setId(rs.getInt(1));  
		        e.setProgramType(rs.getString(2));
		        e.setCourse(rs.getString(3));  
		        e.setAcademicYear(rs.getString(4));
		        e.setInterviewType(rs.getString(5));
		        e.setInCharge(rs.getString(6));
					/*
					 * e.setInCharge(rs.getString(6)); e.setInCharge(rs.getString(7));
					 * e.setInCharge(rs.getString(8));
					 */
		        
		       		    
		        list.add(e);  
		        }  
		        return list;  
		        }
		    });  	
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		String sql="delete from interviewdefinition where id="+id+"";  
	    template.update(sql); 
		
	}

	public InterviewDefinition getInterviewDefinitionById(int id) {
		return template.query("select * from InterviewDefinition where id="+id,new ResultSetExtractor<InterviewDefinition>(){  
		    
		     public InterviewDefinition extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		    	 InterviewDefinition e=new InterviewDefinition();  
		        while(rs.next()){  
		       
		        	e.setId(rs.getInt(1));  
			        e.setProgramType(rs.getString(2));
			        e.setCourse(rs.getString(3));  
			        e.setAcademicYear(rs.getString(4));
			        e.setInterviewType(rs.getString(5));
			        e.setInCharge(rs.getString(6));    
		        }  
		        return e;  
		        }  
		    });  
		
	}


	public void updateInterviewDefinition(InterviewDefinition inte) {
		// TODO Auto-generated method stub
		
		String sql="update InterviewDefinition set programType='"+inte.getProgramType()+"',course='"+inte.getCourse()+"',academicyear='"+inte.getAcademicYear()+"',interviewtype='"+inte.getInterviewType()+"',incharge='"+inte.getInCharge()+"' where id="+inte.getId()+"";
		System.out.println(inte.getId());
		System.out.println(inte.getCourse());
		System.out.println(sql);
	   template.update(sql); 
		
	}

	public List<Registeration> getStudentsByFilter(String course, String entraExam, String caste) {	
		
		/* if(entraExam==null)
		 {
			 String sql="select * from Registeration where course='"+course+"'";
			 System.out.println(sql);
			 System.out.println(caste);
			 System.out.println(String.valueOf(entraExam));
			 return template.query("select * from Registeration where course='"+course+"'",new ResultSetExtractor<List<Registeration>>(){
						
						 * return template.query("select * from Registeration where (course='"
						 * +course+"' AND caste='"+caste+"') AND (course='"+course+"' AND r_marks>='"
						 * +entraExam+"')",new ResultSetExtractor<List<Registeration>>(){
						   	
			public List<Registeration> extractData(ResultSet rs) throws SQLException, DataAccessException {  
		    	 
		    	 List<Registeration> list=new ArrayList<Registeration>();  
		    	
		        while(rs.next()){  
		        	 Registeration e=new Registeration();  
		        	e.setFullname(rs.getString(3));		        	
			        e.setCourse(rs.getString(6));
			        e.setEntrance_exam(rs.getString(28));
			        e.setR_no(rs.getString(29));		        
			        e.setR_marks(rs.getString(30));  
			        e.setCaste(rs.getString(10)); 			        
			        list.add(e); 
		        }  
		        return list;  
		        }  
		    }); 
		
		}
		else
		{*/
		String sql="select * from Registeration where (course='"+course+"' AND caste='"+caste+"') OR (course='"+course+"' AND r_marks>='"+entraExam+"'";
		System.out.println(sql);
		return template.query("select * from Registeration where (course='"+course+"' AND caste='"+caste+"') OR (course='"+course+"' AND r_marks>='"+entraExam+"')",new ResultSetExtractor<List<Registeration>>(){
	
		     public List<Registeration> extractData(ResultSet rs) throws SQLException, DataAccessException {  
		    	 
		    	 List<Registeration> list=new ArrayList<Registeration>();  
		    	
		        while(rs.next()){  
		        	 Registeration e=new Registeration();  
		        	e.setFullname(rs.getString(3));		        	
			        e.setCourse(rs.getString(6));
			        e.setEntrance_exam(rs.getString(28));
			        e.setR_no(rs.getString(29));		        
			        e.setR_marks(rs.getString(30));  
			        e.setCaste(rs.getString(10)); 			        
			        list.add(e); 
		        }  
		        return list;  
		        }  
		    }); 
		}
	}
