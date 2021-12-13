package Activity5;
import java.util.Scanner;
public class InputNum {


		
		public static void main(String[] args) {
			 
			int num1,num2,result;
		 Scanner input = new Scanner(System.in);
		 System.out.println("Enter Num");
		 num1 = input.nextInt();
		 System.out.println("Enter Num");
		 num2 = input.nextInt();
		 input.close();
		 
		 result = num1 + num2;
		 
		 System.out.printf("%d + %d = %d",num1,num2,result);

		}



	}

