package com.example;

public class Employee {
	
	int empId;
	String empName;
	
	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	@Override
	public boolean equals(Object o) {
		
		if(o!=null || o.getClass()!=getClass())//get class object of employee class
			 return false;
		else if(o==this)//pointing to same referrence object
			return true;
		
		Employee e=(Employee)o;
		return (this.empId==e.empId);
		
		
	}
	
	public int hashCode() {
		
		return getEmpId();
	}

}
