package com.microservice.demo.Model;

import java.util.List;

import com.microservice.demo.entity.VaccinationCenter;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class RequiredResponse {
	 public VaccinationCenter vacCenter;
	 
	 public List<Citizen> citlist;

	public VaccinationCenter getVacCenter() {
		return vacCenter;
	}

	public void setVacCenter(VaccinationCenter vacCenter) {
		this.vacCenter = vacCenter;
	}

	public List<Citizen> getCitlist() {
		return citlist;
	}

	public void setCitlist(List<Citizen> citlist) {
		this.citlist = citlist;
	}
	 
	 
 
}
