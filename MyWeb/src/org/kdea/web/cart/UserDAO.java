package org.kdea.web.cart;

import java.sql.SQLException;
import java.util.*;

import org.java.servlet.EmpVO;

public class UserDAO extends AbstractDAO {

	public boolean checkEmp(int input_num,String name) {
		conn = getConn();
		String sql = "SELECT EMPNO FROM emp2 where empno=? and ename=?";
		boolean ok = true;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, input_num);
			pstmt.setString(2, name);
			rs = pstmt.executeQuery();
			List<EmpVO> list = new ArrayList<>();
			while (rs.next()) {
				EmpVO emp = new EmpVO();
				emp.setEmpno(rs.getInt("EMPNO"));
				list.add(emp);
			}
			if(list.size()==0){ok=false;}
			return ok;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return ok;
	}
	
}
