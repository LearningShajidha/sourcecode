package com.example;

public class Student {
	
	private  int stuId;
	private  String stuName;
	private String dept;
	private int year;
	public int getStuId() {
		return stuId;
	}
	public void setStuId(int stuId) {
		this.stuId = stuId;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public Student(int stuId, String stuName, String dept, int year) {
		super();
		this.stuId = stuId;
		this.stuName = stuName;
		this.dept = dept;
		this.year = year;
	}
	@Override
	public String toString() {
		return "Student [stuId=" + stuId + ", stuName=" + stuName + ", dept=" + dept + ", year=" + year + "]";
	}
	
	
	

}
