import java.lang.*;
public class test{
	public static void main(String[] args){
		String s="您好";
		int i=3;
		test3 t=new test3();
		t.new1(3);
	}
}


class test2{
	public void new1(){};
}
class test3 extends test2{
	public void new1(int i){
		System.out.println("fdsdfdsf"+i);
	}
}
