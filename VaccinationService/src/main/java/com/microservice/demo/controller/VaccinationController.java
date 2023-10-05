package com.microservice.demo.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.microservice.demo.Model.Citizen;
import com.microservice.demo.Model.RequiredResponse;
import com.microservice.demo.entity.VaccinationCenter;
import com.microservice.demo.repository.VaccinationRepository;

@RestController
public class VaccinationController {
	
	@Autowired
	private VaccinationRepository repo;
	
	@Autowired
	private RestTemplate restTmp;
	
	@RequestMapping("/")
	public String home()
	{
	   return "index.html";
	}
	@PostMapping("/add")
	public ResponseEntity<VaccinationCenter> addCitizen(@RequestBody VaccinationCenter center) {
		
		System.out.println("*********************"+center.toString());
		repo.save(center);
		
		
		return new ResponseEntity<>(center,HttpStatus.OK);
	}
	
	@GetMapping("/vaccine/id/{id}")
	public ResponseEntity<RequiredResponse> getVaccinationDetails(@PathVariable Integer id){
		RequiredResponse  reqRespo=new RequiredResponse();
		VaccinationCenter center=repo.findById(id).get();
		reqRespo.setVacCenter(center);
		
		List<Citizen> citilist =restTmp.getForObject("http://localhost:8081/citizen/id/"+id, List.class);
		
		reqRespo.setCitlist(citilist);
		return new ResponseEntity<RequiredResponse>(reqRespo,HttpStatus.OK);
		
	}

}
