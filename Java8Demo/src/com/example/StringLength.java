package com.example;

public class StringLength {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		String strInCntry_cd ="AE|CITIXX12122|CBFT"
				+ "|IGTAE";
		
		String strcountryCode= strInCntry_cd.substring(0,strInCntry_cd.indexOf("|"));
        String strSwiftCode = strInCntry_cd.substring(strInCntry_cd.indexOf("|")+1,strInCntry_cd.lastIndexOf("|"));
        String strProductCode = strInCntry_cd.substring(strInCntry_cd.lastIndexOf("|")+1,strInCntry_cd.length());
        
        String initCountryCode=strInCntry_cd.substring(strInCntry_cd.lastIndexOf("|")+1,strInCntry_cd.length());
        
        System.out.println("strcountryCode : "+strcountryCode);
        System.out.println("strSwiftCode : "+strSwiftCode);
        System.out.println("strProductCode : "+strProductCode);
        System.out.println("initCountryCode : "+initCountryCode);
        String[] st=strInCntry_cd.split("\\|");
        System.out.println(" st.length  "+ st.length);
        String strcountryCode1=  st[0];
        String strSwiftCode1 = st[1];
        String strProductCode1 =st[2];
        String initCountryCode1=st[3];
        System.out.println("initCountryCode1 : "+initCountryCode1);
        System.out.println("strcountryCode1 : "+strcountryCode1);
        System.out.println("strSwiftCode1 : "+strSwiftCode1);
        System.out.println("strProductCode1  :"+strProductCode1);

	}

}
