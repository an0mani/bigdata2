package jy_com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

public class FileDAO {
   private Connection conn = null;
   private PreparedStatement pst = null;
   private ResultSet rs = null;
   private int cnt;
   private static FileDAO instance = new FileDAO();
   
   public static FileDAO getInstance() {
      return instance;
   }
   
   public void getConnection() throws Exception {
      InputStream in = (this.getClass().getResourceAsStream("../../../../db.properties"));
      //현재 작업하고 있는 자바파일의 클래스파일을 기준으로 db.properties을 읽어옴
      //java.util.Properties p = new Properties();
      Properties p = new Properties();
      p.load(in);
      
      Class.forName(p.getProperty("dbclass"));
      //동적로딩
      String url = p.getProperty("dburl");
      String dbid = p.getProperty("dbid");
      String dbpw = p.getProperty("dbpw");

      conn = DriverManager.getConnection(url, dbid, dbpw);
      //DBMS의 id와 pw를 인증을 받고 DB를 핸들링할 수 있는 Connection 객체를 생성
      
   }
   
   public void close() throws Exception {
      if(rs!=null) rs.close();
      if(pst!=null) pst.close();
      if(conn!=null) conn.close();
   }
   
   public int uploadFile(String name,String title,String text,String wdate,String filename) throws Exception {
      getConnection();
      
      pst = conn.prepareStatement("insert into baby_messageboard values(?,messageboard_num.nextval,?,?,?,?)");
      pst.setString(1, name);
      pst.setString(2, title);
      pst.setString(3, text);
      pst.setString(4, wdate);
      pst.setString(5, filename);
      
      cnt = pst.executeUpdate();
      
      
      close();
      return cnt;
   }

   public ArrayList<FileVO> selectAll() throws Exception {
      getConnection();

      pst = conn.prepareStatement("select * from baby_messageboard order by m_num desc");
      rs = pst.executeQuery();
      ArrayList<FileVO> list = new ArrayList<FileVO>();
      
      while(rs.next()) {
    	  list.add(new FileVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
      }
      close();
      return list;
   }

   public ArrayList<FileVO> SelectOne(int num,String id) throws Exception {
      getConnection();

      pst = conn.prepareStatement("select * from baby_messageboard where m_num = ? and m_id = ?");
      pst.setInt(1, num);
      pst.setString(2, id);
      
      rs = pst.executeQuery();
      
      ArrayList<FileVO> list = new ArrayList<>();
      
      while(rs.next()) {
         list.add(new FileVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
      }
      
      close();
      
      return list;
      
   }
   
	public int messageDelete(int num,String id) throws Exception {
		
		getConnection();
		
		pst = conn.prepareStatement("delete from baby_messageboard where m_num = ? and m_id = ?");
		pst.setInt(1, num);
		pst.setString(2, id);
		
		int cnt = pst.executeUpdate();
		
		return cnt;
		
	}

	public int messageUpdate(String name, String title, String text, String wdate, String filename, int num) throws Exception {
		
		getConnection();
		
		
		pst = conn.prepareStatement("update baby_messageboard set title = ? , text = ? , wdate = ? , filename = ? where m_num = ?");
	      
	      pst.setString(1, title);
	      pst.setString(2, text);
	      pst.setString(3, wdate);
	      pst.setString(4, filename);
	      pst.setInt(5, num);

		int cnt = pst.executeUpdate();
		
		return cnt;
		
	}
   
}