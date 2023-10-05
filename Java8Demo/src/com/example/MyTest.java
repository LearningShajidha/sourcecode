package com.example;

public class MyTest extends ChildClass{
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ChildClass obj = new ChildClass(); 
		 System.out.println("Value of x: " +obj.x); //85
		  obj.msg(); //Child class firest method
		  obj.msg2(); // child class second method
		  
		 Baseclass obj2 = new ChildClass();
		 System.out.println("Value of x: " +obj2.x);//85

		//System.out.println("Value of y: " +obj2.y); //100
		   obj2.msg();// child class first method
		 //obj2.msg2(); //child class second method
		  } 
	}


