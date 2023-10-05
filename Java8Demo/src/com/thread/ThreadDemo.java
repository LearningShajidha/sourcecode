package com.thread;

public class ThreadDemo {
	
	public static void main(String[] args) {
		
		System.out.println("Hello...........");
		System.out.println(Thread.currentThread().getName());
		CreateThreadByThreadClass  obj=new CreateThreadByThreadClass()
;
		 obj.start();
		 for(int j=0;j<100;j++) {
			 System.out.println("Iam parent  thread");
		 }
		
/////////////////Using Runnable
	ThreadByRunnable runObj=new ThreadByRunnable();
	Thread thr=new Thread(runObj);
	 thr.start();
	 for(int j=0;j<100;j++) {
		 System.out.println("Iam runable ..... parent  thread");
	 }
	}
}
