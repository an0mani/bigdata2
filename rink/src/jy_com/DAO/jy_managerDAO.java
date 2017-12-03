package jy_com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class jy_managerDAO {
	private Connection conn = null;
	private PreparedStatement pst = null;
	private ResultSet rs = null;
	private static jy_managerDAO instance = new jy_managerDAO();

	public int managermessage(String id, String name, String title, String text) throws Exception {

		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String dbid = "system";
		String dbpw = "1234";

		// �����ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// DBMS id�� pw�� ������ �ް� DB�� �ڵ鸵 �� �� �ִ� Connection ��ü�� ����
		Connection conn = DriverManager.getConnection(url, dbid, dbpw);

		pst = conn.prepareStatement("insert into baby_messagebox values(messagebox_num.nextval,?,?,?,?,sysdate)");
		pst.setString(1, id);
		pst.setString(2, name);
		pst.setString(3, title);
		pst.setString(4, text);

		int cnt = pst.executeUpdate();
		System.out.println(cnt);
		return cnt;
	}

	public ArrayList<jy_managerVO> managerSelect(String name) throws Exception {

		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String dbid = "system";
		String dbpw = "1234";

		// �����ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// DBMS id�� pw�� ������ �ް� DB�� �ڵ鸵 �� �� �ִ� Connection ��ü�� ����
		Connection conn = DriverManager.getConnection(url, dbid, dbpw);

		pst = conn.prepareStatement("select * from baby_messagebox where m_name = ?");
		pst.setString(1, name);

		rs = pst.executeQuery();

		jy_managerVO vo = null;
		ArrayList<jy_managerVO> arr = new ArrayList<>(); // �޼����� �������̱� ������ ����Ʈ ���.

		while (rs.next()) {
			int num = rs.getInt(1);
			String id = rs.getString(2);
			String name1 = rs.getString(3);
			String title = rs.getString(4);
			String text = rs.getString(5);
			String date = rs.getString(6);

			vo = new jy_managerVO(num, id, name1, title, text, date);
			arr.add(vo);
		}
		return arr;
	}

	public static jy_managerDAO getInstance() {
		return instance;
	}

	public int managerDelete(int num) throws Exception {
		
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String dbid = "system";
		String dbpw = "1234";

		// �����ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// DBMS id�� pw�� ������ �ް� DB�� �ڵ鸵 �� �� �ִ� Connection ��ü�� ����
		Connection conn = DriverManager.getConnection(url, dbid, dbpw);
		
		pst = conn.prepareStatement("delete from baby_messagebox where m_num = ?");
		pst.setInt(1, num);
		
		int cnt = pst.executeUpdate();
		
		return cnt;		
	}

}
