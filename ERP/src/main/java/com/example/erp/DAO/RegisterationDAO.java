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
public class RegisterationDAO implements IregisterationDAO {
	
JdbcTemplate template;  
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		template = new JdbcTemplate(dataSource);
	}
	
	public void save(Registeration p) {
		
//String sql="insert into world.student(firstName,lastName,sex,dob,email,section,country,firstAttempt,subjects) values('"+p.getFirstName()+"','"+p.getLastName()+"','"+p.getSex()+"','"+p.getDob()+"','"+p.getEmail()+"','"+p.isFirstAttempt()+"','"+p.getCountry()+"',true,'"+convertListToDelimitedString(p.getSubjects())+"')"; 
		/*
		 * Random ran = new Random(); int n = ran.nextInt(1000)+1; String
		 * val=String.valueOf(n);
		 * 
		 * Random ran1 = new Random(); String alpha="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		 * for(int i=0;i<1;i++) {
		 * 
		 * }
		 */
		
		/*
		 * StringBuilder builder = new StringBuilder(); String
		 * alpha="ABCDEFGHIJKLMNOPQRSTUVWXYZ"; int character =
		 * (int)(Math.random()*alpha.length()); builder.append(alpha.charAt(character));
		 */
		
		/*
		 * StringBuffer sb = new StringBuffer(); for (int i = 12; i > 0; i -= 12) { int
		 * n = min(12, abs(i)); sb.append(leftPad(Long.toString(round(random() * pow(36,
		 * n)), 36), n, '0'));
		 */
		/*
		 * final String AB =
		 * "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		 * SecureRandom rnd = new SecureRandom();
		 * 
		 * StringBuilder sb = new StringBuilder(); for( int i = 0; i < 8; i++ )
		 * sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
		 * 
		 * System.out.println(sb.toString());
		 */
		
		String sql="insert into registeration(referenceid,fullname,phonenumber,mailid,course) values('"+p.getReferenceid()+"','"+p.getFullname()+"','"+p.getPhonenumber()+"','"+p.getMailid()+"','"+p.getCourse()+"')";
		System.out.println(sql);
	     template.update(sql);  
	}
	
public List<Registeration> getAllStudents() {
		
		
		return template.query("select * from registeration",new ResultSetExtractor<List<Registeration>>(){  
		    
		     public List<Registeration> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<Registeration> list=new ArrayList<Registeration>();  
		        while(rs.next()){  
		        	Registeration e=new Registeration();  
		        e.setId(rs.getInt(1));  
		        e.setReferenceid(rs.getInt(2));
		        e.setFullname(rs.getString(3));  
		        e.setPhonenumber(rs.getString(4));
		        e.setMailid(rs.getString(5));
		        e.setCourse(rs.getString(6));
		       		    
		        list.add(e);  
		        }  
		        return list;  
		        }  
		    });  		
		  }

public Registeration getStudentById(int id) {
	// TODO Auto-generated method stub
	return template.query("select * from registeration where ID="+id,new ResultSetExtractor<Registeration>(){  
	    
	     public Registeration extractData(ResultSet rs) throws SQLException,  
	            DataAccessException {  
	      
	    	 Registeration e=new Registeration();  
	        while(rs.next()){  
	       
	        	e.setId(rs.getInt(1));  
		        e.setReferenceid((rs.getInt(2)));  
		        e.setFullname(rs.getString(3));  
		        e.setPhonenumber(rs.getString(4));
		        e.setMailid(rs.getString(5));
		        e.setCourse(rs.getString(6));    
	        }  
	        return e;  
	        }  
	    });  
	
}

public Registeration getCandidatesByreferenceID(int ref) {
	// TODO Auto-generated method stub
	return template.query("select * from registeration where referenceid="+ref,new ResultSetExtractor<Registeration>(){  
	    
	     public Registeration extractData(ResultSet rs) throws SQLException,  
	            DataAccessException {  
	      
	    	 Registeration e=new Registeration();  
	        while(rs.next()){  
	       
	        	e.setId(rs.getInt(1));  
		        e.setReferenceid((rs.getInt(2)));  
		        e.setFullname(rs.getString(3));  
		        e.setPhonenumber(rs.getString(4));
		        e.setMailid(rs.getString(5));
		        e.setCourse(rs.getString(6));    
	        }  
	        return e;  
	        }  
	    });  
	
}

public Registeration getStudentByRef(int ref)
{
	return template.query("select phonenumber from registeration where referenceid="+ref,new ResultSetExtractor<Registeration>(){
	    
	     public Registeration extractData(ResultSet rs) throws SQLException,  
	            DataAccessException {  
	      
	    	 //List<Registeration> list=new ArrayList<Registeration>();   
	    	 Registeration e=new Registeration();
	        while(rs.next()){  
	        	
	        	//e.setId(rs.getInt(1));  
	        	//e.setReferenceid(rs.getInt(2));  
		       // e.setFullname(rs.getString(3));  
		        e.setPhonenumber(rs.getString(1));
		        
		        //e.setMailid(rs.getString(5));
		        //e.setCourse(rs.getString(6));  
		       // list.add(e);
	        }  
	        //System.out.println("phonenumber"+e.toString());
	        return e;  
	        }  
	    });  
}


public void updateMe(Registeration r) {
	String sql="update registeration set fullname='"+r.getFullname()+"',phonenumber='"+r.getPhonenumber()+"',mailid='"+r.getMailid()+"',course='"+r.getCourse()+"' where id="+r.getId()+"";
	System.out.println(r.getId());
	System.out.println(r.getFullname());
	System.out.println(sql);
   template.update(sql); 
	
}



@Override
public void delete(int id) {
	// TODO Auto-generated method stub
	String sql="delete from registeration where id="+id+"";  
    template.update(sql);  
	
}

public List<Registeration> getRegisteration() {
	// TODO Auto-generated method stub
	
	return template.query("select fullname,mailid,phonenumber from registeration where id=19",new ResultSetExtractor<List<Registeration>>(){  
	    
	     public List<Registeration> extractData(ResultSet rs) throws SQLException,  
	            DataAccessException {  
	      
	        List<Registeration> list=new ArrayList<Registeration>();  
	        while(rs.next()){  
	        	Registeration e=new Registeration();  
	        e.setId(rs.getInt(1));  
	        e.setReferenceid(rs.getInt(2));
	        e.setFullname(rs.getString(3));  
	        e.setPhonenumber(rs.getString(4));
	        e.setMailid(rs.getString(5));
	        e.setCourse(rs.getString(6));
	       		    
	        list.add(e);  
	        }  
	        return list;  
	        }  
	    });  	

}

public void saveAdmission(Registeration re) {
	// TODO Auto-generated method stub

	String sql="update registeration set dob='"+re.getDob()+"',gender='"+re.getGender()+"',nationality='"+re.getNationality()+"',caste='"+re.getCaste()+"',address='"+re.getAddress()+"',p_name='"+re.getP_name()+"',p_phonenumber='"+re.getP_phonenumber()+"',p_mailid='"+re.getP_mailid()+"',p_address='"+re.getP_address()+"',sslc_board='"+re.getSslc_board()+"',s_percentage='"+re.getS_percentage()+"',s_yop='"+re.getS_yop()+"',puc_board='"+re.getPuc_board()+"',p_percentage='"+re.getP_percentage()+"',p_yop='"+re.getP_yop()+"',graduate_board='"+re.getGraduate_board()+"',g_percentage='"+re.getG_percentage()+"',g_yop='"+re.getG_yop()+"',course_type='"+re.getCourse_type()+"',first_language='"+re.getFirst_language()+"',quota_caste='"+re.getQuota_caste()+"',quota_sports='"+re.getQuota_sports()+"',quota_speciallyenabled='"+re.getQuota_speciallyenabled()+"',entrance_exam='"+re.getEntrance_exam()+"',r_no='"+re.getR_no()+"',r_marks='"+re.getR_marks()+"',entrance_exam2='"+re.getEntrance_exam2()+"',r_no2='"+re.getR_no2()+"',r_marks2='"+re.getR_marks2()+"' where referenceid="+re.getReferenceid()+"";
	System.out.println(sql);
     template.update(sql);

	
}
}
