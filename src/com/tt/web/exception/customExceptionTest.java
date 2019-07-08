package com.tt.web.exception;

public class customExceptionTest {

	public static void main(String[] args) throws MyException_1, MyException_2 {
		customExceptionTest cet=new customExceptionTest();
		
			
				cet.method(null);
			
		

	}
	
	public void method(String str) throws MyException_1, MyException_2{
		
		if(str==null){
			
			throw new MyException_1("string is null");
		}else if(str.equals("hello")){
			throw new MyException_2("string can't be hello");
		}else{
			System.out.println(str);
		}
	}

}
