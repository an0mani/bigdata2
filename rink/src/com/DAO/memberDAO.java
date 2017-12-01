package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class memberDAO {

	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String className = "oracle.jdbc.driver.OracleDriver";
	Connection conn = null;
	PreparedStatement pst = null;

	public int InsertMember(String id, String pw, String babyName, String gender, String phone, String blood,
			int weight, int height, String birthday) throws Exception { // 회원가입

		Class.forName(className);
		conn = DriverManager.getConnection(url, dbid, dbpw);
		pst = conn.prepareStatement("insert into baby_member values(?,?,?,?,?,?,?,?,?)");

		pst.setString(1, id);
		pst.setString(2, pw);
		pst.setString(3, babyName);
		pst.setString(4, gender);
		pst.setString(5, phone);
		pst.setString(6, blood);
		pst.setInt(7, weight);
		pst.setInt(8, height);
		pst.setString(9, birthday);

		int cnt = pst.executeUpdate();

		return cnt;
	}

	public ArrayList<memberVO> Login(String id, String password) throws Exception { // 로그인 체크

		Class.forName(className);
		conn = DriverManager.getConnection(url, dbid, dbpw);
		pst = conn.prepareStatement("select * from baby_member where m_id=?");

		pst.setString(1, id);

		ResultSet rs = pst.executeQuery();

		int cnt = 0;

		ArrayList<memberVO> list = new ArrayList<memberVO>();

		memberVO vo = null;
		String confirm_id = "";
		String confirm_pw = "";
		String confirm_name = "";
		String confirm_sex = "";
		String confirm_blood = "";
		int confirm_weight = 0;
		int confirm_height =0;
		String confirm_birth = "";


		if (rs.next()) {
			confirm_id = rs.getString(1);
			confirm_pw = rs.getString(2);
			confirm_name = rs.getString(3);
			confirm_sex = rs.getString(4);
			confirm_blood = rs.getString(6);
			confirm_weight = rs.getInt(7);
			confirm_height = rs.getInt(8);
			confirm_birth = rs.getString(9);

			if (confirm_id.equals(id)) {
				cnt = 1; // 아이디가 있는데 비밀번호가 틀렸을 경우

				if (confirm_pw.equals(password)) {
					cnt = 2; // 아이디,비밀번호가 다 맞은 경우
				}
			}
		}
		vo = new memberVO(confirm_id, confirm_pw, confirm_name, confirm_sex, confirm_blood, confirm_weight,
				confirm_height, confirm_birth, cnt);
		list.add(vo);
		
		return list;

	}

	public int LoginCheck(String id) throws Exception { // 중복확인

		Class.forName(className);
		conn = DriverManager.getConnection(url, dbid, dbpw);
		pst = conn.prepareStatement("select * from baby_member where m_id=?");

		pst.setString(1, id);

		ResultSet rs = pst.executeQuery();

		int cnt;

		if (rs.next()) {
			cnt = 1;
		} else {
			cnt = 0;
		}

		return cnt;

	}

	public String[] searchID(String phone) throws Exception {

		Class.forName(className);
		conn = DriverManager.getConnection(url, dbid, dbpw);
		pst = conn.prepareStatement("select * from baby_member where m_phone=?");

		pst.setString(1, phone);

		ResultSet rs = pst.executeQuery();

		String[] array = new String[2];

		if (rs.next()) {
			String id = rs.getString("m_id");
			String pw = rs.getString("m_pw");

			array[0] = id;
			array[1] = pw;

		}

		return array;

	}

	public int UpdateMember(String id, String name, String sex, String birth, String blood, String weight,
			String height) throws Exception {

		Class.forName(className);
		conn = DriverManager.getConnection(url, dbid, dbpw);
		pst = conn.prepareStatement(
				"update baby_member set m_name=?, m_sex=?, m_birth=?, m_blood=?, m_weight=?, m_height=? where m_id=?");

		pst.setString(1, name);
		pst.setString(2, sex);
		pst.setString(3, birth);
		pst.setString(4, blood);
		pst.setString(5, weight);
		pst.setString(6, height);
		pst.setString(7, id);

		int cnt = pst.executeUpdate();

		return cnt;

	}

	public int deleteMember(String id) throws Exception {

		Class.forName(className);
		conn = DriverManager.getConnection(url, dbid, dbpw);
		pst = conn.prepareStatement("delete from baby_member where m_id=?");

		pst.setString(1, id);

		int cnt = pst.executeUpdate();

		return cnt;

	}

}
