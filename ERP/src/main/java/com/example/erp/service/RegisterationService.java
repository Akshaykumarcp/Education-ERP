package com.example.erp.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
	
	public String sendReferrenceIdViaMsg(String mobileNo, String string) {
		try {
			// Construct data
			System.out.println("mobile number and reference ID "+mobileNo+" "+string );
			String apiKey = "apikey=" + "TdPcY7EeCsI-LCLxdQhrYJKgWRArB2potjgEsqEcuq";
			String message = "&message=" + "Thank You for regiseration. Your reference ID is:"+string+". Welcome to Credessol Institution";
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=+91" + mobileNo;
			System.out.println("sending data");
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			System.out.println("All data"+data);
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			System.out.println("sent");
			return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			return "Error "+e;
		}
	}
	
	/* SEND REFERENCE ID TO MAIL */
	
    private JavaMailSender javamailsender;
    
    @Autowired
	public RegisterationService(JavaMailSender sender)
	{
		this.javamailsender = sender;
		
	}

	public void sendReferrenceIdViaMail(String mail, String referenceid) throws MailException{
		
		
		SimpleMailMessage mail1 = new SimpleMailMessage();
		
		/*
		 * MimeMessage message = sender.createMimeMessage(); MimeMessageHelper helper =
		 * new MimeMessageHelper(message);
		 */
		        
		        System.out.println("Try block and capturing details");
				mail1.setTo(mail);
				mail1.setFrom("akshay1.k@credessol.com");
				System.out.println("mail captured");
				mail1.setText("Your Referrence ID is"+ referenceid+"");
				 System.out.println("text captured");
				 mail1.setSubject("Credessol College - Online Application Form - Referrence ID");
				   System.out.println("subject captured");
		        javamailsender.send(mail1);
		        System.out.println("Mail Sent");
		
	}
	
	/* SEND OTP TO MAIL */

public void sendLoginCandidateOtpViaMail(String mail, int otp) throws MailException{
		
		SimpleMailMessage mail2 = new SimpleMailMessage();
		
		/*
		 * MimeMessage message = sender.createMimeMessage(); MimeMessageHelper helper =
		 * new MimeMessageHelper(message);
		 */
		        
				mail2.setTo(mail);
				mail2.setFrom("akshay1.k@credessol.com");
				mail2.setText("Your OTP is"+ otp+"");
				mail2.setSubject("Credessol College - Online Application Form Login - OTP");
				   
		        javamailsender.send(mail2);
		        System.out.println("OTP Mail Sent");
		
	}

public void saveOTP(int otp, int id) {
	// TODO Auto-generated method stub
	regi.saveOTP(otp,id);
}

public Registeration getOTP(int refer) {
	// TODO Auto-generated method stub
	return regi.getOTP(refer);
	
}

		

}
