package com.example;

import java.util.Comparator;

public class SalaryComparator  implements Comparator<Bank>{

	@Override
	public int compare(Bank o1, Bank o2) {
		// TODO Auto-generated method stub
		return o1.getCity().compareTo(o2.getCity());
	}
	
}
