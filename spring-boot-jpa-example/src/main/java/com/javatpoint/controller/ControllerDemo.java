package com.javatpoint.controller;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.javatpoint.model.User;
import com.javatpoint.service.UserService;
@RestController
public class ControllerDemo 
{
	@Autowired
	UserService userservice;
	
@RequestMapping("/")
public String home()
{
   return "/home.jsp";
}
@GetMapping("/users")
private ResponseEntity<?> getAllUser()   
{  
	Map<String,Set<User>>  uMap=userservice.getUserlist();	
	
	return new ResponseEntity<>(uMap,HttpStatus.OK);  
}  

@GetMapping("/user/{id}")
private User  getUser(@PathVariable("id") int  userid) {
	User userDet=null;
	 
	userDet=userservice.getUser(userid);
	if(userDet==null) {
		
	}
	 return userDet;
	 
}

 @PostMapping("/user")
 private String    saveUser(@RequestBody User user) {
	 
	 userservice.saveUser(user);
	  return user.getId()+" post successfully";
	 
 }
 @PutMapping("/user/{id}")
 private String    updateUser(@RequestBody User user) {
	 
	 userservice.updateUser(user);
	  return user.getId()+"........... post successfully";
	 
 }
 @DeleteMapping("/user/{id}")
 private String    deleteUser(@PathVariable int id) {
	 
	 userservice.deleteUser(id);
	  return " Deleted successfully";
	 
 }
}
