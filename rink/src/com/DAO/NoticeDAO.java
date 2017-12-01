package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

public class NoticeDAO {
   private Connection conn = null;
   private PreparedStatement pst = null;
   private ResultSet rs = null;
   private int cnt;
   private static NoticeDAO instance = new NoticeDAO();
   
   public static NoticeDAO getInstance() {
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
   
   public int uploadFile(String title,String text) throws Exception {
      getConnection();
      
      pst = conn.prepareStatement("insert into baby_notice values(file_num.nextval,?,?,to_char(sysdate,'YYYY-MM-DD'))");
      pst.setString(1, title);
      pst.setString(2, text);
      
      
      cnt = pst.executeUpdate();
      
      
      close();
      return cnt;
   }

   public ArrayList<NoticeVO> selectAll() throws Exception {
      getConnection();

      pst = conn.prepareStatement("select * from baby_notice order by mnum desc");
      rs = pst.executeQuery();
      ArrayList<NoticeVO> list = new ArrayList<>();
      
      while(rs.next()) {
      list.add(new NoticeVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
      }
      close();
      return list;
   }

   public ArrayList<NoticeVO> SelectOne(int num) throws Exception {
      getConnection();

      pst = conn.prepareStatement("select * from baby_notice where num = ?");
      pst.setInt(1, num);
      rs = pst.executeQuery();
      ArrayList<NoticeVO> list = new ArrayList<>();
      
      while(rs.next()) {
         list.add(new NoticeVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
         }
      close();
      return list;
      
   }
   public int messageDelete(int num) throws Exception {
		
		getConnection();
		
		pst = conn.prepareStatement("delete from baby_notice where mnum = ?");
		pst.setInt(1, num);
		
		int cnt = pst.executeUpdate();
		
		return cnt;
		
	}
}