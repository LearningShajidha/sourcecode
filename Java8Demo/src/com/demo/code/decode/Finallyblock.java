package com.demo.code.decode;


public class Finallyblock {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	try {	
		for(;;)
		{
			System.out.println("test");
			throw new RuntimeException("message");
		}
		//exit();
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	finally {
			System.gc();
		}
	
	}
	

}
