package org.java.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public abstract class AbstractDAO {
	protected Connection conn;
	protected PreparedStatement pstmt;
	protected ResultSet rs;

	// �����ͺ��̽� ������� ������ ���ڿ��� ����
	private String jdbc_driver = "oracle.jdbc.OracleDriver";
	private String db_url = "jdbc:oracle:thin:@localhost:1521:xe";

	public Connection getConn() {
		try {
			Class.forName(jdbc_driver);// ����̹� �ε�, ����̹� �Ŵ��� ���
			conn = DriverManager.getConnection(db_url, "scott", "TIGER");
			return conn;

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public void closeAll() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
