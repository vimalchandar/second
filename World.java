cpackage com.javafullstack.studentdetails;

public class Studentdetails {
String stuName="Vimal Chandar";
int stuId=170;
public void grade()
{
	String stuGrade="S";
	System.out.println(stuGrade);
}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Studentdetails obj1=new Studentdetails();
		//Studentdetails obj2=new Studentdetails();
		//Studentdetails obj3=new Studentdetails();
		System.out.println(obj1.stuName);
		System.out.println(obj1.stuId);
		obj1.grade();
		
	}

}
