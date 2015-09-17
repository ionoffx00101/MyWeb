package org.java.login_check;

import java.sql.SQLException;
import java.util.*;

import org.java.servlet.EmpVO;

public class EmpDAO extends AbstractDAO {

	public boolean checkEmpID(int input_num) {
		conn = getConn();
		String sql = "SELECT EMPNO FROM emp2 where empno=?";
		boolean ok = true;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, input_num);
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
