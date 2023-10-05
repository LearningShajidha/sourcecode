import java.util.HashSet;

public class SetEstringJoin {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 HashSet<String> set = new HashSet();
		    set.add("Alive");
		    set.add("is");
		    set.add("Awesome");
		    
		    String result = String.join(",",set);
		    System.out.println(result);
	}

}
