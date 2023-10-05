package com.practice.solver;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class RandomNumber {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int max=100;
		int min =10;
		Random rad=new Random();
		List<Integer> intlist=new ArrayList<>();
		
		for(int i=0;i<10;i++) {
			
			//System.out.print(rad.nextInt(max-min)+1+",");
			intlist.add(rad.nextInt(max-min)+1);
		}
		System.out.println("List Of integer:"+intlist.toString());

		int randomMax=intlist.stream().max(Integer::compare).get().intValue();
		Arrays.asList(intlist);;
		intlist.stream().map(i->i).collect(Collectors.toList());
		System.out.println("RandomMax:"+randomMax);
		Integer randMax=getMaxNumber(intlist);
		
		System.out.println("::::::::::::"+randMax);

	

}
	 public static Integer  getMaxNumber(List<Integer> list){
			
		 int m=0;
			for(int j=0;j<list.size();j++) {
				
				m=getMax(list,list.get(j));
				
			}
			return m;
		}
	 
	static  int  getMax(List<Integer> list,int j){
		 
		 int max=0;
		 for(int k=1;k<list.size();k++) {
				
				if(j>list.get(k)) {
					System.out.print("j.........."+j+"..k."+list.get(k));
					
					max= j;
				}
				else {
					 //max= list.get(k);
				}
				
			}
		 
		 return max;
	 }
}