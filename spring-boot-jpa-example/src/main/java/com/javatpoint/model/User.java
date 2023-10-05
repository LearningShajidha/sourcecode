package com.javatpoint.model;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="userdata")
public class User 
{
@Id
private int id;
@Column
private String username;

private String email;
private String mobNo;
private int age;
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public int getId() 
{
return id;
}
public void setId(int id) 
{
this.id = id;
}

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMobNo() {
	return mobNo;
}
public void setMobNo(String mobNo) {
	this.mobNo = mobNo;
}

public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
@Override
public String toString() {
	return "User [id=" + id + ", username=" + username + ", email=" + email + ", mobNo=" + mobNo + " age=" + age +"]";
}
@Override
public int hashCode() {
	return Objects.hash(username);
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	User other = (User) obj;
	return Objects.equals(username, other.username);
}

}
