/*
 * package com.example.erp.controller;
 * 
 * import java.util.HashMap; import java.util.Map;
 * 
 * import org.springframework.http.HttpStatus; import
 * org.springframework.http.ResponseEntity; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.ModelMap; import
 * org.springframework.web.bind.annotation.PathVariable; import
 * org.springframework.web.bind.annotation.RequestBody; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.bind.annotation.RestController;
 * 
 * import com.example.erp.model.OTPSystem; import
 * com.example.erp.model.Registeration; import com.twilio.Twilio; import
 * com.twilio.rest.api.v2010.account.Message; import
 * com.twilio.type.PhoneNumber;
 * 
 * // to support rest Api
 * 
 * @Controller public class OTPSystemRestController {
 * 
 * private static final String AUTH_TOKEN = "c70141a662af06822d70d0fadb9c9ad5";
 * private static final String ACCOUNT_SID =
 * "AC553d69e0a5e3d34dd5cc8db1f0ff47d0";
 * 
 * // vl store otp data for every customer
 * 
 * // otpsystem vl store expiry , etc
 * 
 * static { Twilio.init(ACCOUNT_SID,AUTH_TOKEN); }
 * 
 * private Map<String, OTPSystem> otp_data = new HashMap<>();
 * 
 * 
 * @RequestMapping(value ="/mobilenumbers/{mobilenumber}/otp",method =
 * RequestMethod.GET) public String newRegist(ModelMap model) { //Registeration
 * candi = new Registeration(); //model.addAttribute("register", new
 * Registeration()); //model.addAttribute("message", message); return
 * "mobilenumbers/{mobilenumber}/otp"; }
 * 
 * 
 * @RequestMapping(value="/mobilenumbers/{mobilenumber}/otp",method=
 * RequestMethod.POST) public ResponseEntity<Object>
 * sendOTP(@PathVariable("mobilenumber") String mobile) {
 * 
 * OTPSystem otpsystem= new OTPSystem(); otpsystem.setMobileNumber("mobile");
 * otpsystem.setOtp(String.valueOf(((int)(Math.random()*(10000-1000)))+1000));
 * otpsystem.setExpirytime(System.currentTimeMillis()+20000);
 * otp_data.put("mobile", otpsystem); Message.creator(new PhoneNumber("mobile"),
 * new PhoneNumber("+12052368290"), "Your OTP is"+otpsystem.getOtp()).create();
 * Message message = Message.creator(new PhoneNumber("+918123920743"), new
 * PhoneNumber("+12052368290"),"Your OTP is"+otpsystem.getOtp()).create();
 * 
 * return new ResponseEntity<>("OTP is sent Successfully",HttpStatus.OK);
 * 
 * }
 * 
 * @RequestMapping(value="/mobilenumbers/{mobilenumber}/otp",method=
 * RequestMethod.PUT) public ResponseEntity<Object>
 * verifyOTP(@PathVariable("mobilenumber") String mobilenumber, @RequestBody
 * OTPSystem requestBodyOTP) {
 * 
 * if(requestBodyOTP.getOtp()==null ||
 * requestBodyOTP.getOtp().trim().length()<=0 ) { return new
 * ResponseEntity<>("please provide otp",HttpStatus.BAD_REQUEST); }
 * 
 * if(otp_data.containsKey(mobilenumber)) { OTPSystem otpsystem =
 * otp_data.get(mobilenumber); if(otpsystem!=null) { // main logic
 * if(otpsystem.getExpirytime()>=System.currentTimeMillis()) {
 * if(requestBodyOTP.getOtp().equals(otpsystem.getOtp())) {
 * otp_data.remove(mobilenumber); return new
 * ResponseEntity<>("OTP is verified Successfully",HttpStatus.OK); } return new
 * ResponseEntity<>("Invalid OTP",HttpStatus.BAD_REQUEST);
 * 
 * } return new ResponseEntity<>("OTP is expired",HttpStatus.BAD_REQUEST); }
 * return new ResponseEntity<>("Something went wrong",HttpStatus.BAD_REQUEST); }
 * return new ResponseEntity<>("Mobile Number not found",HttpStatus.NOT_FOUND);
 * }
 * 
 * 
 * }
 */