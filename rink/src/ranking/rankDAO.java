package ranking;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import ym_com.DAO.ym_FileDAO;
import ym_com.DAO.ym_FileVO;

public class rankDAO {
	private Connection conn = null;
	private PreparedStatement pst = null;
	private ResultSet rs = null;
	private int cnt;
	private static rankDAO instance = new rankDAO();
	
	public static rankDAO getInstance() {
		return instance;
	}
	
	public void getConnection() throws Exception {
		InputStream in = (this.getClass().getResourceAsStream("../../../db.properties"));
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
	


	public ArrayList<rankVO> selectAll() throws Exception {
		getConnection();

		pst = conn.prepareStatement("select * from baby_rank");
		rs = pst.executeQuery();
		ArrayList<rankVO> list = new ArrayList<>();
		
		while(rs.next()) {
		list.add(new rankVO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6)));
		}
		close();
		return list;
	}

	public ArrayList<rankVO> SelectOne(String area) throws Exception {
		getConnection();
		System.out.println(area);
		pst = conn.prepareStatement("select * from baby_rank where b_area = ?");
		pst.setString(1, area);
		rs = pst.executeQuery();
		ArrayList<rankVO> list = new ArrayList<>();
		
		while(rs.next()) {
			list.add(new rankVO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6)));
		}
		close();
		return list;
		
	}
}
