package com.example.erp.DAO.admin;

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

import com.example.erp.model.admin.ApplicationNoEntry;
import com.example.erp.model.admin.CheckListEntry;
import com.example.erp.model.admin.CourseEntry;
import com.example.erp.model.admin.CurriculumEntry;
import com.example.erp.model.admin.ProgramEntry;
import com.example.erp.model.admin.ProgramType;

@Service
public class ProgramTypeDAO {

	JdbcTemplate template;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		template = new JdbcTemplate(dataSource);
	}

	public void save(String programtype) {
		System.out.println("DAO -->"+programtype);
		String sql = "insert into adminprogramtype(program_type) values('"+ programtype + "')";
		String sql2="insert into adminprogramentry(programtype) values('"+ programtype + "')";
		System.out.println(sql);
		template.update(sql);
		template.update(sql2);
	}

	public List<ProgramType>  AllProgramType() {
		return template.query("select * from adminprogramtype", new ResultSetExtractor<List<ProgramType>>() {

			public List<ProgramType> extractData(ResultSet rs) throws SQLException, DataAccessException {

				List<ProgramType> list = new ArrayList<ProgramType>();
				while (rs.next()) {
					ProgramType e = new ProgramType();
					e.setId(rs.getInt(1));
					e.setProgramType((rs.getString(2)));
					e.setProgramCode(rs.getInt(3));
					list.add(e);
				}
				return list;
			}
		});
	}

	public void deleteProgramType(int id) {
		String sql = "delete from adminprogramtype where id=" + id + "";
		template.update(sql);
	}

	public ProgramType getProgramTypeById(int id) {

		return template.query("select * from adminprogramtype where id="+id, new ResultSetExtractor<ProgramType>() {

			public ProgramType extractData(ResultSet rs) throws SQLException, DataAccessException {
				ProgramType e = new ProgramType();
				while (rs.next()) {
					
					e.setId(rs.getInt(1));
					e.setProgramType((rs.getString(2)));
					e.setProgramCode(rs.getInt(3));
					
				}
				return e;
			}
		});
	}

	/*
	 * public void saveProgramEntry(ProgramEntry programentry) {
	 * System.out.println("Program Entry DAO -->"+programentry); String sql =
	 * "insert into adminprogramentry values(programentry)";
	 * System.out.println(sql); template.update(sql); }
	 */

	public void saveProgramEntry(String programType, String programCode, String additionalInformation,
			String attendanceWithRegistrationNo, String entranceDetails, String extraCurriculum, String heightAndWeight,
			String familyBackground, String isOnlineApplicationOpen, String isTCDisplay, String knownLanuguage,
			String lateralDetails, String transferCourse, String trainingShortCourse, String stream,
			String seatNoGenerationRequied, String programNameInCertificate, String program,
			String onlineApplicationYear, String motherTongue,String secondLanguage) {
		System.out.println("Program Entry DAO -->");
		String sql = "insert into adminprogramentry(programtype,program,program_name_in_certificate,mother_tongue,display_known_languages,family_background,lateral_details,transfer_course,extra_curriculum,is_online_application_open,attendance_registration_no,program_code,stream,second_language,height_and_weight,entrance_details,training_short_courses,additional_infomation,is_tc_display,application_form_year) values('"+programType+ "','"+program+ "','"+programNameInCertificate+ "','"+motherTongue+ "','"+knownLanuguage+ "','"+familyBackground+ "','"+lateralDetails+ "','"+transferCourse+ "','"+extraCurriculum+ "','"+isOnlineApplicationOpen+ "','"+attendanceWithRegistrationNo+ "','"+programCode+ "','"+stream+ "','"+secondLanguage+ "','"+heightAndWeight+ "','"+entranceDetails+ "','"+trainingShortCourse+ "','"+additionalInformation+ "','"+isTCDisplay+ "','"+onlineApplicationYear+ "')";
		
		System.out.println(sql);
		template.update(sql);
	}

	public List<ProgramEntry> AllProgramEntry() {
		return template.query("select * from adminprogramentry", new ResultSetExtractor<List<ProgramEntry>>() {

			public List<ProgramEntry> extractData(ResultSet rs) throws SQLException, DataAccessException {

				List<ProgramEntry> list = new ArrayList<ProgramEntry>();
				while (rs.next()) {
					ProgramEntry e = new ProgramEntry();
					e.setId(rs.getInt(1));
					e.setProgramType((rs.getString(2)));
					e.setProgram((rs.getString(3)));
					e.setProgramNameInCertificate((rs.getString(4)));
					e.setMotherTongue((rs.getString(5)));
					e.setKnownLanuguage((rs.getString(6)));
					e.setFamilyBackground((rs.getString(7)));
					e.setLateralDetails((rs.getString(8)));
					e.setTransferCourse((rs.getString(9)));
					e.setExtraCurriculum((rs.getString(10)));
					e.setIsOnlineApplicationOpen((rs.getString(11)));
					e.setSeatNoGenerationRequied((rs.getString(12)));
					e.setAttendanceWithRegistrationNo((rs.getString(13)));
					e.setProgramCode((rs.getString(14)));
					e.setStream((rs.getString(15)));
					e.setSecondLanguage((rs.getString(16)));
					e.setHeightAndWeight((rs.getString(17)));
					e.setEntranceDetails((rs.getString(18)));
					e.setTrainingShortCourse((rs.getString(19)));
					e.setAdditionalInformation((rs.getString(2)));
					e.setIsTCDisplay((rs.getString(2)));
					e.setOnlineApplicationYear((rs.getString(2)));
					
					list.add(e);
				}
				return list;
			}
		});
		
		
	}

	public List<ProgramType> retriveAllAdminProgramType() {
		return template.query("select * from adminprogramtype",new ResultSetExtractor<List<ProgramType>>(){  
		    
		     public List<ProgramType> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<ProgramType> list=new ArrayList<ProgramType>();  
		        while(rs.next()){  
		        	ProgramType e=new ProgramType();  
		        e.setId(rs.getInt(1));  
		        e.setProgramType(rs.getString(2));  
		    	       		 
		        list.add(e);  
		        }  
		        return list;  
		        }  
		    });
	}

	public void saveCourseEntry(String programType, String program, int i, String courseName,
			int j, String courseNameInCertificate, int k, String courseNameForSemMarkscard,
			double d, double e, String workExperience,
			String isDetailMarksPrint, String workExperienceManditory, String appearInOnline,
			String applicationProcessingSms, String onlyForApplication, String bankNameForSmartcard,
			String bankFullName, String bankSection, String courseCommencementDate, String campus,
			String noOfMidsemRepeatAttempts, String ParentDepartment, String attendanceMarksCalculatedBy,int indianNationals,int nriAndSaarc,int foriegnNationals,int totalSeats) {
String sql = "insert into admincourseentry(program_type,program,course_code,course_name,maximum_intake,course_name_in_certificate,pay_code,course_name_for_sem_markscard,applicattion_fee,application_fee_international,work_experience,is_detail_marks_print,work_experience_manditory,appear_in_online,application_processing_sms,only_for_application,bank_name_for_smartcard,bank_full_name,bank_section,course_commencement_date,campus,no_of_midsem_repeat_attempts,parent_department,attendance_marks_calculated_by,inidan_nationals,nri_and_saarc,foreign_nationals,total_seats) values('"+programType+ "','"+program+ "','"+i+ "','"+courseName+ "','"+j+ "','"+courseNameInCertificate+ "','"+k+ "','"+courseNameForSemMarkscard+ "','"+d+ "','"+e+ "','"+workExperience+ "','"+isDetailMarksPrint+ "','"+workExperienceManditory+ "','"+appearInOnline+ "','"+applicationProcessingSms+ "','"+onlyForApplication+ "','"+bankNameForSmartcard+ "','"+bankFullName+ "','"+bankSection+ "','"+courseCommencementDate+ "','"+campus+ "','"+noOfMidsemRepeatAttempts+ "','"+ParentDepartment+ "','"+attendanceMarksCalculatedBy+"','"+indianNationals+"','"+nriAndSaarc+ "','"+foriegnNationals+ "','"+totalSeats+"')";
		System.out.println(sql);
		template.update(sql);
	}

	
	public List<CourseEntry> retriveAllAdminCourseType() {
		return template.query("select * from admincourseentry",new ResultSetExtractor<List<CourseEntry>>(){  
		    
		     public List<CourseEntry> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<CourseEntry> list=new ArrayList<CourseEntry>();  
		        while(rs.next()){  
		        	CourseEntry e=new CourseEntry();  
		        e.setId(rs.getInt(1));  
		        e.setProgramType(rs.getString(2));
		        e.setProgram(rs.getString(3));
				e.setCourseCode(rs.getInt(4));
				e.setCourseName(rs.getString(5));
				e.setMaximumIntake(rs.getInt(6));
				e.setCourseNameInCertificate(rs.getString(7));
				e.setPayCode(rs.getInt(8));
				e.setCourseNameForSemMarkscard(rs.getString(9));
				e.setApplicattionFee(rs.getInt(10));
				e.setApplicationFeeInternational(rs.getInt(11));
				e.setWorkExperience(rs.getString(12));
				e.setIsDetailMarksPrint(rs.getString(13));
				e.setWorkExperienceManditory(rs.getString(14));
				e.setAppearInOnline(rs.getString(15));
				e.setApplicationProcessingSms(rs.getString(16));
				e.setOnlyForApplication(rs.getString(17));
				e.setBankNameForSmartcard(rs.getString(18));
				e.setBankFullName(rs.getString(19));
				e.setBankSection(rs.getString(20));
				e.setCourseCommencementDate(rs.getString(21));
				e.setCampus(rs.getString(22));
				e.setNoOfMidsemRepeatAttempts(rs.getString(23));
				e.setParentDepartment(rs.getString(24));
				e.setAttendanceMarksCalculatedBy(rs.getString(25));
				e.setIndianNationals(rs.getInt(26));
				e.setNriAndSaarc(rs.getInt(27));
				e.setForiegnNationals(rs.getInt(28));
				e.setTotalSeats(rs.getInt(29));
				e.setAssignDepartment(rs.getInt(30));
		    	       		 
		        list.add(e);  
		        }  
		        return list;  
		        }  
		    });
		
	}

	public void updateProgramType(int id, String programType) {
		String sql = "update adminprogramtype set program_type='" +  programType+ "' where id=" + id + "";
System.out.println(sql);
template.update(sql);
	}

	public void updateProgramConfig(int id, ProgramEntry programentry) {
		String sql = "update adminprogramentry set programtype='" +  programentry.getProgramType()+ "',program='" +  programentry.getProgram()+ "',program_name_in_certificate='" +  programentry.getProgramNameInCertificate()+ "',mother_tongue='" +  programentry.getMotherTongue()+ "',display_known_languages='" +  programentry.getKnownLanuguage()+ "',family_background='" +  programentry.getFamilyBackground()+ "',lateral_details='" +  programentry.getLateralDetails()+ "',transfer_course='" +  programentry.getTransferCourse()+ "',extra_curriculum='" +  programentry.getExtraCurriculum()+ "',is_online_application_open='" +  programentry.getIsOnlineApplicationOpen()+ "',seat_no_generation_required='" +  programentry.getSeatNoGenerationRequied()+"',attendance_registration_no='" +  programentry.getAttendanceWithRegistrationNo()+ "',program_code='" +  programentry.getProgramCode()+ "',stream='" +  programentry.getStream()+ "',second_language='" +  programentry.getSecondLanguage()+"',height_and_weight='" +  programentry.getHeightAndWeight()+ "',entrance_details='" +  programentry.getEntranceDetails()+"',training_short_courses='" +  programentry.getTrainingShortCourse()+ "',additional_infomation='" +  programentry.getAdditionalInformation()+ "',is_tc_display='" +  programentry.getIsTCDisplay()+"',application_form_year='" +  programentry.getOnlineApplicationYear()+ "' where id=" + id + "";
		System.out.println(sql);
		template.update(sql);
	}

	public void deleteProgramConfig(int id) {
		String sql = "delete from adminprogramentry where id=" + id + "";
		template.update(sql);
	}

	public ProgramEntry getProgramConfigById(int id) {
		return template.query("select * from adminprogramentry where id="+id, new ResultSetExtractor<ProgramEntry>() {

			public ProgramEntry extractData(ResultSet rs) throws SQLException, DataAccessException {
				ProgramEntry e = new ProgramEntry();
				while (rs.next()) {
					
					e.setId(rs.getInt(1));
					e.setProgramType((rs.getString(2)));
					e.setProgram(rs.getString(3));
					e.setProgramNameInCertificate(rs.getString(4));
					e.setMotherTongue(rs.getString(5));
					e.setKnownLanuguage(rs.getString(6));
					e.setFamilyBackground(rs.getString(7));
					e.setLateralDetails(rs.getString(8));
					e.setTransferCourse(rs.getString(9));
					e.setExtraCurriculum(rs.getString(10));
					e.setIsOnlineApplicationOpen(rs.getString(11));
					e.setSeatNoGenerationRequied(rs.getString(12));
					e.setAttendanceWithRegistrationNo(rs.getString(13));
					e.setProgramCode(rs.getString(14));
					e.setStream(rs.getString(15));
					e.setSecondLanguage(rs.getString(16));
					e.setHeightAndWeight(rs.getString(17));
					e.setEntranceDetails(rs.getString(18));
					e.setTrainingShortCourse(rs.getString(19));
					e.setAdditionalInformation(rs.getString(20));
					e.setIsTCDisplay(rs.getString(21));
					e.setOnlineApplicationYear(rs.getString(22));
					
				}
				return e;
			}
		});
	
	}

	public void deleteCourseEntry(int id) {
		String sql = "delete from admincourseentry where id=" + id + "";
		template.update(sql);
	}

	public CourseEntry getCourseEntryById(int id) {
		return template.query("select * from admincourseentry where id="+id, new ResultSetExtractor<CourseEntry>() {

			public CourseEntry extractData(ResultSet rs) throws SQLException, DataAccessException {
				CourseEntry e = new CourseEntry();
				while (rs.next()) {
					
					e.setId(rs.getInt(1));
					e.setProgramType((rs.getString(2)));
					e.setProgram(rs.getString(3));
					e.setCourseCode(rs.getInt(4));
					e.setCourseName(rs.getString(5));
					e.setMaximumIntake(rs.getInt(6));
					e.setCourseNameInCertificate(rs.getString(7));
					e.setPayCode(rs.getInt(8));
					e.setCourseNameForSemMarkscard(rs.getString(9));
					e.setApplicattionFee(rs.getInt(10));
					e.setApplicationFeeInternational(rs.getInt(11));
					e.setWorkExperience(rs.getString(12));
					e.setIsDetailMarksPrint(rs.getString(13));
					e.setWorkExperienceManditory(rs.getString(14));
					e.setAppearInOnline(rs.getString(15));
					e.setApplicationProcessingSms(rs.getString(16));
					e.setOnlyForApplication(rs.getString(17));
					e.setBankNameForSmartcard(rs.getString(18));
					e.setBankFullName(rs.getString(19));
					e.setBankSection(rs.getString(20));
					e.setCourseCommencementDate(rs.getString(21));
					e.setCampus(rs.getString(22));
					e.setNoOfMidsemRepeatAttempts(rs.getString(23));
					e.setParentDepartment(rs.getString(24));
					e.setAttendanceMarksCalculatedBy(rs.getString(25));
					e.setIndianNationals(rs.getInt(26));
					e.setNriAndSaarc(rs.getInt(27));
					e.setForiegnNationals(rs.getInt(28));
					e.setTotalSeats(rs.getInt(29));
					e.setAssignDepartment(rs.getInt(30));
				}
				return e;
			}
		});
		
	}

	public void updateCourseEntryById(int id, CourseEntry courseentry) {
		String sql = "update admincourseentry set program_type='" +  courseentry.getProgramType()+ "',program='" +  courseentry.getProgram()+ "',course_code='" +  courseentry.getCourseCode()+ "',course_name='" +  courseentry.getCourseName()+ "',maximum_intake='" +  courseentry.getMaximumIntake()+ "',course_name_in_certificate='" +  courseentry.getCourseNameInCertificate()+ "',pay_code='" +  courseentry.getPayCode()+ "',course_name_for_sem_markscard='" +  courseentry.getCourseNameForSemMarkscard()+ "',applicattion_fee='" +  courseentry.getApplicattionFee()+ "',application_fee_international='" +  courseentry.getApplicationFeeInternational()+ "',work_experience='" +  courseentry.getWorkExperience()+"',is_detail_marks_print='" +  courseentry.getIsDetailMarksPrint()+ "',work_experience_manditory='" +  courseentry.getWorkExperienceManditory()+ "',appear_in_online='" +  courseentry.getAppearInOnline()+ "',application_processing_sms='" +  courseentry.getApplicationProcessingSms()+"',only_for_application='" +  courseentry.getOnlyForApplication()+ "',bank_name_for_smartcard='" +  courseentry.getBankNameForSmartcard()+"',bank_full_name='" +  courseentry.getBankFullName()+ "',bank_section='" +  courseentry.getBankSection()+ "',course_commencement_date='" +  courseentry.getCourseCommencementDate()+"',campus='" +  courseentry.getCampus()+ "',no_of_midsem_repeat_attempts='" +  courseentry.getNoOfMidsemRepeatAttempts()+ "',parent_department='" +  courseentry.getParentDepartment()+ "',attendance_marks_calculated_by='" +  courseentry.getAttendanceMarksCalculatedBy()+ "',inidan_nationals='" +  courseentry.getIndianNationals()+ "',nri_and_saarc='" +  courseentry.getNriAndSaarc()+ "',foreign_nationals='" +  courseentry.getForiegnNationals()+ "',total_seats='" +  courseentry.getTotalSeats()+ "' where id=" + id + "";
		System.out.println(sql);
		template.update(sql);
	}

	public List<ProgramEntry> retriveAllAdminProgramTypeAndProgramFromProgramConfig() {
		return template.query("select programtype,program from adminprogramentry",new ResultSetExtractor<List<ProgramEntry>>(){  
		    
		     public List<ProgramEntry> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<ProgramEntry> list=new ArrayList<ProgramEntry>();  
		        while(rs.next()){  
		        	ProgramEntry e=new ProgramEntry();  
		        e.setProgramType(rs.getString(1));  
		        e.setProgram(rs.getString(2));
		        list.add(e);  
		        }  
		        return list;  
		        }  
		    });
	}

	public void updateCourseEntry(CourseEntry ce) {
		String sql = "update admincourseentry set assign_department='1',department='" + ce.getDepartment()
		+ "' where id=" + ce.getId() + "";
System.out.println("DAO update course ID-->"+ce.getId());
System.out.println(sql);
template.update(sql);
	}

	public List<CourseEntry> retriveAdminProgramTypeProgramCourseFromCourseEntry() {
		return template.query("select program_type,program,course_name from admincourseentry",new ResultSetExtractor<List<CourseEntry>>(){  
		    
		     public List<CourseEntry> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<CourseEntry> list=new ArrayList<CourseEntry>();  
		        while(rs.next()){  
		        	CourseEntry e=new CourseEntry();  
		        e.setProgramType(rs.getString(1));  
		        e.setProgram(rs.getString(2));
		        e.setCourseName(rs.getString(3));
		        list.add(e);  
		        }  
		        return list;  
		        }  
		    });
	}

	public List<ProgramEntry> academicYearFromProgramConfig() {
		return template.query("select application_form_year from adminprogramentry", new ResultSetExtractor<List<ProgramEntry>>() {

			public List<ProgramEntry> extractData(ResultSet rs) throws SQLException, DataAccessException {
				List<ProgramEntry> list = new ArrayList<ProgramEntry>();
				while (rs.next()) {
					ProgramEntry e=new ProgramEntry();  
					e.setOnlineApplicationYear(rs.getString(1));
					list.add(e);
				}
				return list;
			}
		});
	}

	public void saveloadAdminApplicationNoEntry(ApplicationNoEntry applicationnoentry) {
		String sql = "insert into adminapplicationnoentry(academic_year,program_type,program,course_name,online_application_no_from,online_application_no_to,offline_application_no_from,offline_application_no_to) values('"+applicationnoentry.getAcademicYear()+ "','"+applicationnoentry.getProgramType()+ "','"+applicationnoentry.getProgram()+ "','"+applicationnoentry.getCourse()+ "','"+applicationnoentry.getOnlineapplicationNoFrom()+ "','"+applicationnoentry.getOnlineapplicationNoto()+ "','"+applicationnoentry.getOfflineapplicationNoFrom()+ "','"+applicationnoentry.getOfflineapplicationNoto()+ "')";
		System.out.println(sql);
		template.update(sql);
	}

	public List<ApplicationNoEntry> getAllApplicationNoEntry() {
		return template.query("select * from adminapplicationnoentry",new ResultSetExtractor<List<ApplicationNoEntry>>(){  
		    
		     public List<ApplicationNoEntry> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<ApplicationNoEntry> list=new ArrayList<ApplicationNoEntry>();  
		        while(rs.next()){  
		        	ApplicationNoEntry e=new ApplicationNoEntry();  
		        e.setId(rs.getInt(4));  
		        e.setAcademicYear(rs.getString(1));
		        e.setProgramType(rs.getString(2));
		        e.setProgram(rs.getString(3));
				e.setCourse(rs.getString(5));
				e.setOnlineapplicationNoFrom(rs.getInt(6));
				e.setOnlineapplicationNoto(rs.getInt(7));
				e.setOfflineapplicationNoFrom(rs.getInt(8));
				e.setOfflineapplicationNoto(rs.getInt(9));
		        list.add(e);  
		        }  
		        return list;  
		        }  
		    });
	}

	public void deleteApplicationNoEntryBy(int id) {
		String sql = "delete from adminapplicationnoentry where id=" + id + "";
		template.update(sql);
	}

	public ApplicationNoEntry getApplicationNoEntryById(int id) {
		
		return template.query("select * from adminapplicationnoentry where id="+id, new ResultSetExtractor<ApplicationNoEntry>() {

			public ApplicationNoEntry extractData(ResultSet rs) throws SQLException, DataAccessException {
				ApplicationNoEntry e = new ApplicationNoEntry();
				while (rs.next()) {
					
					  e.setId(rs.getInt(4));  
				        e.setAcademicYear(rs.getString(1));
				        e.setProgramType(rs.getString(2));
				        e.setProgram(rs.getString(3));
						e.setCourse(rs.getString(5));
						e.setOnlineapplicationNoFrom(rs.getInt(6));
						e.setOnlineapplicationNoto(rs.getInt(7));
						e.setOfflineapplicationNoFrom(rs.getInt(8));
						e.setOfflineapplicationNoto(rs.getInt(9));
				}
				return e;
			}
		});
	}

	public void updateApplicationNoEntryById(int id, ApplicationNoEntry applicationnoentry) {
		String sql = "update adminapplicationnoentry set academic_year='"+applicationnoentry.getAcademicYear()+"',program_type='" +  applicationnoentry.getProgramType()+ "',program='" +  applicationnoentry.getProgram()+ "',course_name='" +  applicationnoentry.getCourse()+ "',online_application_no_from='" +  applicationnoentry.getOnlineapplicationNoFrom()+ "',online_application_no_to='" +  applicationnoentry.getOnlineapplicationNoto()+ "',offline_application_no_from='" +  applicationnoentry.getOfflineapplicationNoFrom()+ "',offline_application_no_to='" +  applicationnoentry.getOfflineapplicationNoto()+ "' where id=" + id + "";
		System.out.println(sql);
		template.update(sql);
	}

	public void loadAdminCurriculumEntry(CurriculumEntry curriculumentry) {
		String sql = "insert into admincurriculumentry(admitted_year,program_type,program,course,no_of_schemes,scheme) values('"+curriculumentry.getAdmitted_year()+ "','"+curriculumentry.getProgramType()+ "','"+curriculumentry.getProgram()+ "','"+curriculumentry.getCourse()+ "','"+curriculumentry.getNoOfScheme()+ "','"+curriculumentry.getScheme()+ "')";
		System.out.println(sql);
		template.update(sql);
	}

	public List<CurriculumEntry> getAllCurriculumEntry() {
		return template.query("select * from admincurriculumentry",new ResultSetExtractor<List<CurriculumEntry>>(){  
		    
		     public List<CurriculumEntry> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<CurriculumEntry> list=new ArrayList<CurriculumEntry>();  
		        while(rs.next()){  
		        	CurriculumEntry e=new CurriculumEntry();  
		        	e.setId(rs.getInt(1));  
					  e.setAdmitted_year(rs.getString(2));
				        e.setProgramType(rs.getString(3));
				        e.setProgram(rs.getString(4));
						e.setCourse(rs.getString(5));
						e.setNoOfScheme(rs.getString(6));
						e.setScheme(rs.getString(7));
				
		        list.add(e);  
		        }  
		        return list;  
		        }  
		    });
	}

	public void deleteCurriculumEntryBy(int id) {
		String sql = "delete from admincurriculumentry where id=" + id + "";
		template.update(sql);
	}

	public CurriculumEntry getCurriculumEntryById(int id) {
		return template.query("select * from admincurriculumentry where id="+id, new ResultSetExtractor<CurriculumEntry>() {

			public CurriculumEntry extractData(ResultSet rs) throws SQLException, DataAccessException {
				CurriculumEntry e = new CurriculumEntry();
				while (rs.next()) {
					
					  e.setId(rs.getInt(1));  
					  e.setAdmitted_year(rs.getString(2));
				        e.setProgramType(rs.getString(3));
				        e.setProgram(rs.getString(4));
						e.setCourse(rs.getString(5));
						e.setNoOfScheme(rs.getString(6));
						e.setScheme(rs.getString(7));
				}
				return e;
			}
		});
	}

	public void updateCurriculumEntryById(int id, CurriculumEntry curriculumentry) {
		String sql = "update admincurriculumentry set admitted_year='"+curriculumentry.getAdmitted_year()+"',program_type='" +  curriculumentry.getProgramType()+ "',program='" +  curriculumentry.getProgram()+ "',course='" +  curriculumentry.getCourse()+ "',no_of_schemes='" +  curriculumentry.getNoOfScheme()+ "',scheme='" +  curriculumentry.getScheme()+ "' where id=" + id + "";
		System.out.println(sql);
		template.update(sql);
	}

	public void loadAdminChecklistEntry(CheckListEntry checklistentry) {
		String sql = "insert into adminchecklistentry(admitted_year,program_type,program,course,marks_card,need_to_produce,need_to_produce_sem_wise,consolidated_marks,is_marks_card,semester_wise,include_language,previous_exam,exam_required) values('"+checklistentry.getAdmitted_year()+ "','"+checklistentry.getProgramType()+ "','"+checklistentry.getProgram()+ "','"+checklistentry.getCourse()+ "','"+checklistentry.getMarksCard()+ "','"+checklistentry.getNeedToProduce()+ "','"+checklistentry.getNeedToProduceSemWise()+ "','"+checklistentry.getConsolidatedMarks()+"','"+checklistentry.getIsMarksCard()+ "','"+checklistentry.getSemisterWise()+ "','"+checklistentry.getIncludeLanguage()+ "','"+checklistentry.getPreviousExam()+ "','"+checklistentry.getExamRequired()+"')";
		System.out.println(sql);
		template.update(sql);
	}

	public List<CheckListEntry> getAllChecklistEntry() {
		return template.query("select * from adminchecklistentry",new ResultSetExtractor<List<CheckListEntry>>(){  
		    
		     public List<CheckListEntry> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<CheckListEntry> list=new ArrayList<CheckListEntry>();  
		        while(rs.next()){  
		        	CheckListEntry e=new CheckListEntry();  
		        	e.setId(rs.getInt(1));  
					  e.setAdmitted_year(rs.getString(2));
				        e.setProgramType(rs.getString(3));
				        e.setProgram(rs.getString(4));
						e.setCourse(rs.getString(5));
						e.setMarksCard(rs.getString(6));
						e.setNeedToProduce(rs.getString(7));
						e.setNeedToProduceSemWise(rs.getString(8));
						e.setConsolidatedMarks(rs.getString(9));
						e.setMarksCard(rs.getString(10));
						e.setSemisterWise(rs.getString(11));
						e.setIncludeLanguage(rs.getString(12));
						e.setPreviousExam(rs.getString(13));
						e.setExamRequired(rs.getString(14));
		        list.add(e);  
		        }  
		        return list;  
		        }  
		    });
	}

	public void deleteChecklistEntryByEntryBy(int id) {
		String sql = "delete from adminchecklistentry where id=" + id + "";
		template.update(sql);
	}

	public CheckListEntry getChecklistEntryById(int id) {

		return template.query("select * from adminchecklistentry where id="+id, new ResultSetExtractor<CheckListEntry>() {

			public CheckListEntry extractData(ResultSet rs) throws SQLException, DataAccessException {
				CheckListEntry e = new CheckListEntry();
				while (rs.next()) {
					  e.setId(rs.getInt(1));  
					  e.setAdmitted_year(rs.getString(2));
				        e.setProgramType(rs.getString(3));
				        e.setProgram(rs.getString(4));
						e.setCourse(rs.getString(5));
						e.setMarksCard(rs.getString(6));
						e.setNeedToProduce(rs.getString(7));
						e.setNeedToProduceSemWise(rs.getString(8));
						e.setConsolidatedMarks(rs.getString(9));
						e.setMarksCard(rs.getString(10));
						e.setSemisterWise(rs.getString(11));
						e.setIncludeLanguage(rs.getString(12));
						e.setPreviousExam(rs.getString(13));
						e.setExamRequired(rs.getString(14));
				}
				return e;
			}
		});
	}

	public void updateChecklistEntryById(int id, CheckListEntry checklistentry) {
		String sql = "update adminchecklistentry set admitted_year='"+checklistentry.getAdmitted_year()+"',program_type='" +  checklistentry.getProgramType()+ "',program='" +  checklistentry.getProgram()+ "',course='" +  checklistentry.getCourse()+ "',marks_card='" +  checklistentry.getMarksCard()+ "',need_to_produce='" +  checklistentry.getNeedToProduce()+ "',need_to_produce_sem_wise='" +  checklistentry.getNeedToProduceSemWise()+ "',consolidated_marks='" +  checklistentry.getConsolidatedMarks()+ "',is_marks_card='" +  checklistentry.getIsMarksCard()+ "',semester_wise='" +  checklistentry.getSemisterWise()+ "',include_language='" +  checklistentry.getIncludeLanguage()+ "',previous_exam='" +  checklistentry.getPreviousExam()+ "',exam_required='" +  checklistentry.getExamRequired()+ "' where id=" + id + "";
		System.out.println(sql);
		template.update(sql);
	}

	
}
