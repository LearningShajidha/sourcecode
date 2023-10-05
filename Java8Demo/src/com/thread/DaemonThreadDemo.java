package com.thread;

public class DaemonThreadDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		CreateThreadByThreadClass thr=new CreateThreadByThreadClass();
		thr.setName("My sample thread");
		thr.setDaemon(true);
		thr.start();
		for(int i=0;i<10;i++) {
			
			System.out.println("Iam main thread"+i);
		}
		System.out.print("");

	}

}
