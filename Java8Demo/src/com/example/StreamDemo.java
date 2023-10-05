package com.example;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

public class StreamDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		List<Student> list=new ArrayList<Student>();
		list.add(new Student(101,"John","CSE",1));
		list.add(new Student(1023,"Ali","ECE",4));
		list.add(new Student(134,"Sunny","CSE",2));
		list.add(new Student(1341,"Kaya","MECH",3));
		list.add(new Student(654,"Maya","EEE",3));
		
		list.stream().filter(l->l.getYear()<=2).forEach(System.out::println);
		
		Iterator itr=list.iterator();
		System.out.println("for loop.......");
		while(itr.hasNext()) {
			Student  str=(Student)itr.next();
			
			if(str.getYear()<=2)
			{
				System.out.println();
			}
		}
		
	
		System.out.println("Inside.......");
		
	Optional<Student> stu1=	list.stream().sorted(Comparator.comparingInt(Student::getYear).reversed()).skip(3)
.findFirst();
	
	System.out.println("second min"+stu1.toString());
	}

}
