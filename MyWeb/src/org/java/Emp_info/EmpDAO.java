package org.java.Emp_info;

import java.sql.SQLException;
import java.util.*;


public class EmpDAO extends AbstractDAO {

	public List<EmpVO> getEmpName() {
		conn = getConn();
		String sql = "SELECT ENAME FROM emp2 ";

		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<EmpVO> list = new ArrayList<>();
			while (rs.next()) {
				EmpVO emp = new EmpVO();
				emp.setEname(rs.getString("ENAME"));
				list.add(emp);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return null;
	}

	public EmpVO getEmpinfo(String name) {
		conn = getConn();
		
		String sql = "SELECT * FROM emp2 where ename=?";

		EmpVO emp = new EmpVO();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			pstmt.setString(1, name);

				emp.setEmpno(rs.getInt("ENUM"));
				emp.setEname(rs.getString("ENAME"));
				emp.setDeptno(rs.getInt("DEPTNO"));
			
			return emp;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return null;
	}


}
