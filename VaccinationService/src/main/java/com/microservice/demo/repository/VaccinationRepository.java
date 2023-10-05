package com.microservice.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.microservice.demo.entity.VaccinationCenter;

public interface VaccinationRepository  extends JpaRepository<VaccinationCenter, Integer>{
	
	//public List<VaccinationCenter> findAll(Integer id);

}
