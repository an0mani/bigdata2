package test;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class main1 {
   
   public static void main(String[] args) {
      
      Process ps = null;
      String[] cmd = new String[] {"py", "C:/Users/User/Desktop/test.py", "print"};
      String str = null;
      
      try {
         
         System.out.println("Start");
         ps = new ProcessBuilder(cmd).start();
         
         BufferedReader stdOut = new BufferedReader(new InputStreamReader(ps.getInputStream()));
         
         while((str = stdOut.readLine()) != null) {
            System.out.println("Content Output");
            System.out.println(str); 
            // ���� ���� �� ���� �ȿ� print�Լ� >> ����� �ؾ� ��
            // ����� ���ڿ��� str������ ��� ����Ʈ >> ���̽� ���� ��� ���ڿ��� �����Ͱ� �Ѿ���� �� �� ����
            // ���̽㿡�� �Ѱܿ� �����͸� ����Ϸ��� sql���忡 ���� ��ȯ�� ���� 
         }
         
         System.out.println("END");
      } catch (IOException e) {
         e.printStackTrace();
      }
   }
   
   

}