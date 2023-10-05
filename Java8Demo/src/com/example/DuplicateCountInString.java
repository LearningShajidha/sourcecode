package com.example;

import java.util.stream.Collectors;


public class DuplicateCountInString {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		 String str="roseBird";
	   System.out.println(str.chars().mapToObj(c->(char)c).collect(Collectors.groupingBy(c->c,Collectors.counting())));

	
	}

}
