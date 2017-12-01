package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import jy_com.DAO.FileVO;

public class DiaryDAO {
   private Connection conn = null;
   private PreparedStatement pst = null;
   private ResultSet rs = null;
   private int cnt;
   private static DiaryDAO instance = new DiaryDAO();
   
   public static DiaryDAO getInstance() {
      return instance;
   }
   
   public void getConnection() throws Exception {
      InputStream in = (this.getClass().getResourceAsStream("../../../../db.properties"));
      //���� �۾��ϰ� �ִ� �ڹ������� Ŭ���������� �������� db.properties�� �о��
      //java.util.Properties p = new Properties();
      Properties p = new Properties();
      p.load(in);
      
      Class.forName(p.getProperty("dbclass"));
      //�����ε�
      String url = p.getProperty("dburl");
      String dbid = p.getProperty("dbid");
      String dbpw = p.getProperty("dbpw");

      conn = DriverManager.getConnection(url, dbid, dbpw);
      //DBMS�� id�� pw�� ������ �ް� DB�� �ڵ鸵�� �� �ִ� Connection ��ü�� ����
      
   }
   
   public void close() throws Exception {
      if(rs!=null) rs.close();
      if(pst!=null) pst.close();
      if(conn!=null) conn.close();
   }
   
   public int uploadFile(String id,String title,String text, String date, String file) throws Exception {
      getConnection();
      
      pst = conn.prepareStatement("insert into baby_diary values(?,file_num.nextval,?,?,?,?)");
      pst.setString(1, id);      
      pst.setString(2, title);
      pst.setString(3, text);
      pst.setString(4, date);
      pst.setString(5, file);
      
      cnt = pst.executeUpdate();
      
      
      close();
      return cnt;
   }

   public ArrayList<DiaryVO> selectAll() throws Exception {
      getConnection();

      pst = conn.prepareStatement("select * from baby_diary");
      rs = pst.executeQuery();
      ArrayList<DiaryVO> list = new ArrayList<>();
      
      while(rs.next()) {
      list.add(new DiaryVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
      }
      close();
      return list;
   }

   public ArrayList<DiaryVO> SelectOne(int num) throws Exception {
	      getConnection();

	      pst = conn.prepareStatement("select * from baby_diary where m_num = ?");
	      pst.setInt(1, num);
	      
	      rs = pst.executeQuery();
	      
	      ArrayList<DiaryVO> list = new ArrayList<>();
	      
	      while(rs.next()) {
	         list.add(new DiaryVO(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
	      }
	      
	      close();
	      
	      return list;
	      
	   }
	   
		public int messageDelete(int num) throws Exception {
			
			getConnection();
			
			pst = conn.prepareStatement("delete from baby_diary where m_num = ?");
			pst.setInt(1, num);
			
			int cnt = pst.executeUpdate();
			
			return cnt;
			
		}

		public int messageUpdate(String title, String text, String wdate, String filename, int num) throws Exception {
			
			getConnection();
			
			
			pst = conn.prepareStatement("update baby_diary set title = ? , text = ? , wdate = ? , filename = ? where m_num = ?");
		      
		      pst.setString(1, title);
		      pst.setString(2, text);
		      pst.setString(3, wdate);
		      pst.setString(4, filename);
		      pst.setInt(5, num);

			int cnt = pst.executeUpdate();
			
			return cnt;
			
		}
}