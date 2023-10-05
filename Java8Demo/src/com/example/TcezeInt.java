package com.example;

import java.util.HashMap;

public class TcezeInt {

	public static void main(String args[]) {
		
		String input="This is main programs";
		
		String[] chr= input.split(" ");
		HashMap<Integer,String> hmap=new HashMap<Integer,String>();
		for(int i=0;i<chr.length;i++) {
			if(chr[i].length()%2==0) {
				if(!hmap.containsKey(chr[i].length()))
					hmap.put(chr[i].length(), chr[i]);
			}
			
			//System.out.println(chr[i].length()+"************"+chr[i])
;			
		}
		
		Integer result=hmap.keySet().stream().max((i,j)->i.compareTo(j)).get();
		System.out.println("Longest "
				+ "even word  is:::"+hmap.get(result));
		
		
	}
}
