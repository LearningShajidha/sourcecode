package com.microservice.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="VACCINATIONCENTER")
public class VaccinationCenter {

	@Id
	private int id;
	
	@Column
	private String cname;
	

	private String caddress;
	
	@Override
	public String toString() {
		return "User [id=" + id + ", cname=" + cname + ", caddress=" + caddress + "]";
	}
}
