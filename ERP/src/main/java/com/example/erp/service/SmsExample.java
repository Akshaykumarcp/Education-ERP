/*
 * package com.example.erp.service;
 * 
 * import com.twilio.Twilio; import com.twilio.http.TwilioRestClient; import
 * com.twilio.rest.api.v2010.account.Message; import
 * com.twilio.type.PhoneNumber;
 * 
 * public class SmsExample {
 * 
 * public static final String AUTH_TOKEN = "c70141a662af06822d70d0fadb9c9ad5";
 * public static final String ACCOUNT_SID =
 * "AC553d69e0a5e3d34dd5cc8db1f0ff47d0";
 * 
 * 
 * public static void main(String[] args) { Twilio.init(ACCOUNT_SID,
 * AUTH_TOKEN);
 * 
 * // Get an object from its sid. If you do not have a sid, // check out the
 * list resource examples on this page Message message =
 * Message.fetcher("MM5ef8732a3c49700934481addd5ce1659").fetch();
 * System.out.println(message.getBody());
 * 
 * }}
 */