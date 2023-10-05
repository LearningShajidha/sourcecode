package com.microservice.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class VaccinationServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(VaccinationServiceApplication.class, args);
	}
   
	@Bean
public RestTemplate getRestTemplate()
{
		  return new RestTemplate();
}
}
