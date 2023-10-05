
class Student{
	int rollno=1;
	String stName="SHAJIDHA";
	String dept;
	float marks;
	
	void eat(){
		System.out.println("student can eat..");
	}
	
}
public class MTest {
	
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student stu=new Student();
		stu.eat();
		System.out.println("Student name..."+stu.stName);

	}

}
