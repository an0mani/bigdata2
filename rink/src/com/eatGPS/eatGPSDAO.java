package com.eatGPS;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import ranking.rankDAO;
import ranking.rankVO;

public class eatGPSDAO {

	private Connection conn = null;
	private PreparedStatement pst = null;
	private ResultSet rs = null;
	private int cnt;
	private static rankDAO instance = new rankDAO();

	public static rankDAO getInstance() {
		return instance;
	}

	public void getConnection() throws Exception {
		InputStream in = (this.getClass().getResourceAsStream("../../../../db.properties"));
		Properties p = new Properties();
		p.load(in);

		Class.forName(p.getProperty("dbclass"));
		String url = p.getProperty("dburl");
		String dbid = p.getProperty("dbid");
		String dbpw = p.getProperty("dbpw");

		conn = DriverManager.getConnection(url, dbid, dbpw);

	}

	public void close() throws Exception {
		if (rs != null)
			rs.close();
		if (pst != null)
			pst.close();
		if (conn != null)
			conn.close();
	}

	public ArrayList<eatGPSVO> SearchAll() throws Exception {
		getConnection();

		pst = conn.prepareStatement("select * from stroller");
		rs = pst.executeQuery();
		ArrayList<eatGPSVO> list = new ArrayList<>();

		while (rs.next()) {
			list.add(new eatGPSVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
		}
		close();
		return list;
	}

}
