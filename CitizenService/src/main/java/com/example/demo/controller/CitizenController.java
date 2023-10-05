package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.Entity.Citizen;
import com.example.demo.repository.CitizenRepository;

@RestController
@RequestMapping("/citizen")
public class CitizenController {

	
	@Autowired
	CitizenRepository repo;
	
	@RequestMapping("/id/{id}")
	 public ResponseEntity<List<Citizen>> getById(@PathVariable Integer id)
	 {
		 
		 List<Citizen> list=repo.findByVaccincationCenterId(id);
		 return new ResponseEntity<>(list,HttpStatus.OK);
	 }
	
	@PostMapping("/add")
	public ResponseEntity<Citizen> addCitizen(@RequestBody Citizen citizen) {
		
		repo.save(citizen)		;
		
		return new ResponseEntity<>(citizen,HttpStatus.OK);
	}
	
 }
