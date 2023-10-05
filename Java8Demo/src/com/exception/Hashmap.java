package com.exception;

import java.util.HashMap;

public class Hashmap {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
	HashMap gmap=new HashMap();
	HashMap h_map;
	Dog dog=new Dog();
	
	gmap.put("dog", dog);
	dog.setDogName("Buggggggy");
	//gmap.put("dog", dog);
	Dog dog1=((Dog)gmap.get("dog"));
	System.out.println(""+dog1.getDogName());
	//h_map.put("A","test");
	}

}
