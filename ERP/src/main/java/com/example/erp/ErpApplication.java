package com.example.erp;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication; 
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@EnableJpaAuditing
public class ErpApplication {

	public static void main(String[] args) {
		SpringApplication.run(ErpApplication.class, args);
		Logger logger = LoggerFactory.getLogger(ErpApplication.class);
	    logger.info("Hello World"+"Main Program executed");
	}
	
    
	@Bean
	public RestTemplate restTemplate()
	{
		return new RestTemplate();
	}
}

