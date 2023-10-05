package com.example;

import java.util.Comparator;

public class Bank implements Comparable<Bank>  {
	
	private int bId;
	private String bName;
	private String ifscCode;
	private String city;
	private int noOfCust;
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getIfscCode() {
		return ifscCode;
	}
	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getNoOfCust() {
		return noOfCust;
	}
	public void setNoOfCust(int noOfCust) {
		this.noOfCust = noOfCust;
	}
	@Override
	public String toString() {
		return "Bank [bId=" + bId + ", bName=" + bName + ", ifscCode=" + ifscCode + ", city=" + city + ", noOfCust="
				+ noOfCust + "]\n";
	}
	public Bank(int bId, String bName, String ifscCode, String city, int noOfCust) {
		super();
		this.bId = bId;
		this.bName = bName;
		this.ifscCode = ifscCode;
		this.city = city;
		this.noOfCust = noOfCust;
	}
	@Override
	public int compareTo(Bank o) {
		// TODO Auto-generated method stub
		return this.bId - o.bId;
	}
	 public static Comparator<Bank> nameComp=new Comparator<Bank>() {
		 
		 @Override
		 public int compare(Bank b1,Bank b2)
		 {
		 
		 return b1.getbName().compareTo(b2.getbName());
		
		 }
	};
	
	
	

}
