package com.thread;

public class CreateThreadByThreadClass extends Thread{
	
	@Override
	public void run() {
		
		for(int i=0;i<100;i++) {
			System.out.println("Iam  child Daemon thread"+i);
		}
		
	}

}
