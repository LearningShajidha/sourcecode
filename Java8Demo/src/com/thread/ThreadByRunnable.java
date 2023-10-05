package com.thread;

public class ThreadByRunnable implements Runnable{
	
	@Override
	public void run() {
		
		for(int i=0;i<100;i++) {
			System.out.println("Iam  child thread");
		}
		
	}

}
