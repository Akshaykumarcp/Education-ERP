package com.example.erp;


import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;

public class SmsTesting {
    // Find your Account Sid and Token at twilio.com/console
    public static final String ACCOUNT_SID = "AC553d69e0a5e3d34dd5cc8db1f0ff47d0";
    public static final String AUTH_TOKEN = "c70141a662af06822d70d0fadb9c9ad5";

    public static void main(String[] args) {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Message message = Message.creator(
                new com.twilio.type.PhoneNumber("+918281428359"),
                new com.twilio.type.PhoneNumber("+12052368290"),
                "body")
            .create();

        System.out.println(message.getSid());
    }
}