package com.javatpoint.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.TreeMap;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javatpoint.model.User;
import com.javatpoint.repository.UserRepository;
public class UserService {

	@Autowired
	UserRepository userRepo;
	
	
	
	public Map<String,Set<User>> getUserlist(){
		
		List<User> userList=new ArrayList<User>();
		userRepo.findAll().forEach(user->userList.add(user));
		//Grouping in java 8 --3 methods of grouping overrriding.....................
		//1st method  with classifier 
		Map<String,List<User>> map1=userList.stream().collect(Collectors.groupingBy(u->u.getUsername()));
		//2nd method with classifier & collectors
		Map<String,Set<User>> map2=userList.stream().collect(Collectors.groupingBy(u->u.getUsername(),Collectors.toSet()));
		// 3rd method with classifier,Treemap(Sorting),collectors
		Map<String,Set<User>> map=userList.stream().collect(Collectors.groupingBy(u->u.getUsername(),TreeMap::new,Collectors.toSet()));
		
		//Minimum ,Maximum,Average.........
		List<Integer> idList=userList.stream().map(u->u.getId()).collect(Collectors.toList());
		
		Integer min=idList.stream().mapToInt(x->x).summaryStatistics().getMin();
		Integer max=idList.stream().mapToInt(x->x).summaryStatistics().getMax();
		Double avr=idList.stream().mapToInt(x->x).summaryStatistics().getAverage();
		System.out.println("MINIMUM................"+min);System.out.println("MAXIMUM................"+max);
		System.out.println("AVERAGE................"+avr);
		
		//Slice the stream using skip and limit 2and & 3rd highest age
		List<Integer> ageList=userList.stream().map(u->u.getAge()).collect(Collectors.toList());
		
		ageList.stream().skip(1).limit(2).collect(Collectors.toList());

		//String join using delimiter........
		List<String> nameList=userList.stream().map(u->u.getUsername()).collect(Collectors.toList());
		String name=nameList.stream().map(s->s.toUpperCase()).collect(Collectors.joining(","));
		System.out.println("nameList join using delimiter................"+name);
		
		//Duplicates
		Set<String> uniqueNames=new HashSet<String>();
		List<String> uniqName=nameList.stream().filter(n->!uniqueNames.add(n)).collect(Collectors.toList());
		System.out.println(uniqName.toString());
		//counting no of times 
		Map<String ,Long> smap=nameList.stream().collect(Collectors.groupingBy(Function.identity(),Collectors.counting()));
		
		//duplicates printing..by 2 ways method 1
		Set<String> duplicate=smap.entrySet().stream().filter(x->x.getValue()>1).map(e->e.getKey()).collect(Collectors.toSet());
		
		System.out.println("Duplicates ..from map............."+duplicate.toString());
		
		//Method 2
		//Set<String> dupliset1=nameList.stream().filter(name -> Collections.frequency(nameList, name)>1).collect(Collectors.toSet());
		//System.out.println("dupliset1 ..from map............."+dupliset1.toString());
		
		return map;
	
	}
	
	public void  saveUser(User user) {
		userRepo.save(user);
		
	}
	public void  updateUser(User user) {
		Optional<User> user1=userRepo.findById(user.getId());
		userRepo.save(user);
		
	}
	
	public User getUser(int id) {
		User user=userRepo.findById(id).get();
		return user;
	}
	public void deleteUser(int user) {
		userRepo.deleteById(user);
		
	}
}
