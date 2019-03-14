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

import com.example.erp.model.Registeration;

@Service
public class CandidateStatusDAO {

JdbcTemplate template;  
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		template = new JdbcTemplate(dataSource);
	}
	
	public Registeration getCandidatesStatus(int ref)
	{
		return template.query("select referenceid,fullname,phonenumber,mailid,status from registeration where referenceid="+ref,new ResultSetExtractor<Registeration>(){
		    
		     public Registeration extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
						/* List<Registeration> list=new ArrayList<Registeration>(); */
		    	 Registeration e=new Registeration();
		        while(rs.next()){  
		        	
		        	//e.setId(rs.getInt(1));  
		        	e.setReferenceid(rs.getString(1));  
			        e.setFullname(rs.getString(2));  
			        e.setPhonenumber(rs.getString(3));
			        
			        e.setMailid(rs.getString(4));
			        //e.setCourse(rs.getString(6));  
							/* list.add(e); */
		        }  
		        //System.out.println("phonenumber"+e.toString());
		        return e;  
		        }  
		    });  
	}

}
