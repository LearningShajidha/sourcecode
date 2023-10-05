package com.example;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ComparableDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Bank banklist[]=new Bank[5];
		banklist[0]=new Bank(1011,"ICICI","ISDB0008","Navalur",250);
		banklist[1]=new Bank(1021,"Axis","IBBIB0908","Sholinganallur",350);
		banklist[2]=new Bank(341,"SBI","ISKL0878","Tambaram",590);
		banklist[3]=new Bank(1071,"HDFC","INKB06908","Siruseri",500);
		banklist[4]=new Bank(1221,"IndianBank","ISDT0708","Kelambakkam",570);
		
		//Arrays.sort(banklist,Bank.nameComp);
		System.out.println("--------------"+Arrays.toString(banklist));
		SalaryComparator citycomp=new SalaryComparator();
		Arrays.sort(banklist,citycomp);
		System.out.println("*********"+Arrays.toString(banklist));
		
		//banklist
	}

}
