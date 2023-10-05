package com.example;

public class User {
  String userId;
  String userName;
  double salary;
  int age;
public User(String userId, String userName, double salary, int age) {
	super();
	this.userId = userId;
	this.userName = userName;
	this.salary = salary;
	this.age = age;
}
@Override
public String toString() {
	return "User [userId=" + userId + ", userName=" + userName + ", salary=" + salary + ", age=" + age + "]";
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public double getSalary() {
	return salary;
}
public void setSalary(double salary) {
	this.salary = salary;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
  
  
}
