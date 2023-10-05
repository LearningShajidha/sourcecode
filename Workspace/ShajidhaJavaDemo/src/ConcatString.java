import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class ConcatString {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String val[]={ "TFH"};
		
		String temp="So";
		//val=temp.split(",");
		Set<String> myset=new HashSet<String>(Arrays.asList(val));
		System.out.print("Deleted duplicate string "+myset.toString().replace("[", "").replace("]", ""));
		for(int i=0;i<val.length;i++)
		{
			
			temp=temp+val[0];
		}
	}

}
