package com.practice.solver;

import java.util.Scanner;

public class PrintPyramidPattern {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.print("Enter the number of rows you want to print: ");  
		Scanner sc = new Scanner(System.in);  
		
		//i for rows and j for columns      
		//row denotes the number of rows you want to print  
		int i, j, row = sc.nextInt();       
		//Outer loop work for rows  
		for (i=0; i<row; i++)   
		{  
		//inner loop work for space      
		//for (j=row-i; j>1; j--)  //for pyramid
		for (j=2*(row-i); j>0; j--) //right triangle
		{  
		//prints space between two stars  
		System.out.print("-");   
		}   
		//inner loop for columns  
		for (j=0; j<=i; j++ )   
		{   
		//prints star      
		System.out.print("* ");   
		}   
		//throws the cursor in a new line after printing each line  
		System.out.println();   
		}   
		}   
		

}
