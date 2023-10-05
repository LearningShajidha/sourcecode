package com.example;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

public class BankStream {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Integer> intlist=new ArrayList<Integer>();
		intlist.add(123);intlist.add(133);intlist.add(223);intlist.add(10);intlist.add(500);
		
		double intSum=intlist.stream().collect(Collectors.summingDouble(i->i));
		System.out.println("Total of Integer list  ::"+intSum);
		
		List<Bank> banklist =new ArrayList<Bank>();
		Bank b1=new Bank(567,"KK","ISDB0008","Navalur",78);
		Bank b2=new Bank(678,"LLL","KLI00008","guindy",780);
		
		banklist.add(new Bank(1011,"HDFC","ISDB0008","Navalur",250));
		banklist.add(new Bank(1021,"Axis","IBBIB0908","Kelambakkam",350));
		banklist.add(new Bank(341,"SBI","ISKL0878","Tambaram",590));
		banklist.add(new Bank(1071,"SBI","INKB06908","Siruseri",500));
		banklist.add(new Bank(1221,"IndianBank","ISDT0708","Sholinganallur",570));
		
		//Maximum salry
		Optional<Bank> bank= banklist.stream().collect(Collectors.maxBy(Comparator.comparingDouble(Bank::getNoOfCust)));;
		System.out.println(" Max no of cutomers::::::::::"+bank.toString());
		//Second maximun
		Optional<Bank> emp = banklist.stream()
		        .sorted(Comparator.comparingDouble(Bank:: getNoOfCust).reversed()).skip(1).findFirst();
		System.out.println("second  Max no of cutomers"+bank.toString());

		System.out.println(emp.get());
		Map<String,Integer> map=banklist.stream().collect(Collectors.groupingBy(Bank::getbName,Collectors.summingInt(Bank::getNoOfCust)));
		System.out.println("Bank and Noof customers"+map.toString());
		
		List<String> list1=banklist.stream().filter(e->e.getbName().equals("SBI")).map(e1->e1.getbName()).collect(Collectors.toList());
		System.out.println("*******SSSSSSSSSSS******");
		list1.stream().filter(n->n.startsWith("S")).forEach(System.out::println);
		System.out.println("******END******");
		List<Bank> list=		Arrays.asList(b1,b2);
		
		banklist.stream().map(b->b.getbName()).distinct().forEach(System.out::println);
		Map<String,Double> ml=banklist.stream().collect(Collectors.groupingBy(Bank::getbName,Collectors.summingDouble(b->b.getNoOfCust())));
	     System.out.println("*************"+ml.toString());
	
		
		double totalNoOfCust=banklist.stream().collect(Collectors.summingDouble(b->b.getNoOfCust()));
		System.out.println("Total No Of Customer list  ::"+totalNoOfCust);
		
		List<Integer> custList=banklist.stream().filter(f->f.getNoOfCust()>500).map(b->b.getNoOfCust())
				.collect(Collectors.toList());
		List<Bank> banklst=banklist.stream().filter(f->f.getNoOfCust()>500).collect(Collectors.toList());
		banklst.stream().forEach(System.out::println);
		custList.stream().forEach(System.out::println);
		
		
		Set<Integer> set=new HashSet<Integer>();
		
		custList.stream().filter(i->!set.add(i)).forEach(System.out::println);
		
		
		long count=banklist.stream().filter(b->b.getNoOfCust()>250).count();
		System.out.println("Count  ::"+count);
		System.out.println("*******");
		banklist.stream().map(n->n.getbId()).map(n->n+"").filter(f->f.startsWith("1")).
		forEach(System.out::println);
		

	}

}
