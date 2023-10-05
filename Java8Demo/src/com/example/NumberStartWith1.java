package com.example;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class NumberStartWith1 {
	public static void main(String args[]) {
	 List<Integer> list =new ArrayList<Integer>();
	 list.add(10);list.add(6450);
	 list.add(1234510);list.add(1108760);list.add(6710);list.add(894010);list.add(130);	
	 list.stream().map(i->i+"").filter(i->i.startsWith("1")).forEach(System.out::println);
	 
	 List<Integer> mylis=Arrays.asList(12,20,20,45,0,63,78,45);
	 Set<Integer> myset=new HashSet<Integer>();
	 System.out.println("*********************************");
	 mylis.stream().filter(s->!myset.add(s)).forEach(System.out::println);


	 int[] ints = {1,2,3};
	 List<Integer> intlist = Arrays.stream(ints).boxed().collect(Collectors.toList());	
	 System.out.println(intlist.toString());

	}

}
