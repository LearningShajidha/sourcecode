package com.exception;

import java.io.FileNotFoundException;

public class ExceptionDemo {
	
	
	public static void main(String args[]) throws FileNotFoundException,MyException
	
	{
		Dog d=null;
		try {
			System.out.println("Inside ");

			//System.out.println(d.dogName);
			//Run time exception 
			throw new MyException("My customiseed Exception");

			//System.out.println(5/0);
			
		}
		catch(NullPointerException e) {
			
			System.out.println("Null pointer exception");
		}
		catch(MyException myexe)
		{
			System.out.println("Caught the exception");  
            System.out.println(myexe.getMessage());  
			//.printStackTrace();
		}
		catch(Exception e) {
			e.printStackTrace();
			d=new Dog();
			System.out.print(""+d.dogName);
		}
		//FileReader file=new FileReader("E:/asd.txt");
	}

}
