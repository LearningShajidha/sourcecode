package com.java.basic;

class Bike{
	final void run()
	{
		System.out.println("********Bike*****");
	}

}
class Vehi extends Bike
{    
	

}
public class StaticAndFinal {

	  static   String  tempStr="Shajidha";
	  final String tempStfin="Star";
	  
	  
	  public static void test(String m) {
		  
		  
		  tempStr=m;
	  }

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		final StringBuffer strBuff=new  StringBuffer("A");
		StringBuilder stBuild=new StringBuilder();
		 String check="tocheck";
		check=check.concat("Shajidha");
		stBuild.insert(0, "Umar");
		stBuild.insert(1, "Siddiq");
		test("Rizwana");
		strBuff.append("B");
		strBuff.insert(1, " star ");
		strBuff.append(" C");
		System.out.println("shajidha ....\nafter change  \n"+tempStr+"\n");
		System.out.println(stBuild.toString()+"*******"+strBuff.toString());
		
		String a="meou";
		String ab=a+" deal ";
		String abc="meou deal";
		if(abc.equals(ab))
			System.out.println("TRUE>>");
		else if (abc==ab)
			System.out.println("FALSE");
		else
			System.out.println("::false false::");
		try {
			System.out.println("check  "+check);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
