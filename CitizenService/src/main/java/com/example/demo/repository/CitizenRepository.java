package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entity.Citizen;

public interface CitizenRepository extends JpaRepository<Citizen, Integer> {

	public List<Citizen> findByVaccincationCenterId(Integer id);
}
