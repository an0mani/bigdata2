package Info;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Spliterator;

public class article {
   
   public static void main(String[] args) {
      
      Process ps = null;
      String[] cmd = new String[] {"py", "C:/Users/User/git/bigdata2/rink/src/Info/test.py", "print"};
      String str = null;
      ArrayList<String> list = new ArrayList<>();
      try {
         
         System.out.println("Start");
         ps = new ProcessBuilder(cmd).start();
         
         BufferedReader stdOut = new BufferedReader(new InputStreamReader(ps.getInputStream()));
         
         while((str = stdOut.readLine()) != null) {
            System.out.println("Content Output");
            list.add(str);
            
            // 파일 실행 시 파일 안에 print함수 >> 출력을 해야 함
            // 출력한 문자열을 str변수에 담아 프린트 >> 파이썬 실행 결과 문자열로 데이터가 넘어옴을 알 수 있음
            // 파이썬에서 넘겨온 데이터를 사용하려면 sql문장에 따라 반환될 값을 
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