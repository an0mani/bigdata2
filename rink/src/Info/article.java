package Info;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Spliterator;

public class article {
   
   public static void main(String[] args) {
      
      Process ps = null;
      String[] cmd = new String[] {"py", "C:/Users/User/Desktop/title.py", "print"};
      String str = null;
      ArrayList<String> list = new ArrayList<>();
      try {
         
         System.out.println("Start");
         ps = new ProcessBuilder(cmd).start();
         
         BufferedReader stdOut = new BufferedReader(new InputStreamReader(ps.getInputStream()));
         
         while((str = stdOut.readLine()) != null) {
            System.out.println("Content Output");
            list.add(str);
            
            // ���� ���� �� ���� �ȿ� print�Լ� >> ����� �ؾ� ��
            // ����� ���ڿ��� str������ ��� ����Ʈ >> ���̽� ���� ��� ���ڿ��� �����Ͱ� �Ѿ���� �� �� ����
            // ���̽㿡�� �Ѱܿ� �����͸� ����Ϸ��� sql���忡 ���� ��ȯ�� ���� 
         }
         System.out.println(list.size());
        for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
         System.out.println("END");
      } catch (IOException e) {
         e.printStackTrace();
      }
   }
   
   

}