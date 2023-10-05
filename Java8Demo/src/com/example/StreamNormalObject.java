package com.example;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class StreamNormalObject {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		List<Integer> intList=Arrays.asList(12,34,1,9,23,55,29);
		List<Integer>sortedList=intList.stream().sorted().collect(Collectors.toList());
		List<Integer> reverseList=intList.stream().sorted(Collections.reverseOrder()).collect(Collectors.toList());

		System.out.println("Sorted int list "+sortedList.toString());
		System.out.println("Sorted int list in reverse order "+reverseList.toString());
		
		List<String> strList=Arrays.asList("Shajidha","Navaya","Javal","Karthick","Gopal","Swesthick");

		List<String> strSortList=strList.stream().sorted().collect(Collectors.toList());
		List<String> strRevSortList=strSortList.stream().sorted(Collections.reverseOrder()).collect(Collectors.toList());

		System.out.println("strRevSortList String list "+strRevSortList.toString());
		
		List<User> userlist=new ArrayList<>(Arrays.asList(new User("10985", "Shajidha",44574, 34),new User("AD0985", "navay",35574, 26)
				,new User("DE895", "Gopl",44574, 24),new User("AB8766", "Das",35574, 25))) ;
		
		List<User> sortList=userlist.stream().sorted(Comparator.comparingDouble(User::getSalary).reversed()).collect(Collectors.toList());
				
		
		System.out.println("sortList String list "+sortList.toString());
		


	}

}
