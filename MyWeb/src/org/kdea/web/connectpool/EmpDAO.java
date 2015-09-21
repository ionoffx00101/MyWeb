package org.kdea.web.connectpool;

import java.sql.SQLException;
import java.util.*;

public class EmpDAO extends AbstractDAO {
	public List<EmpVO> getEmpList() {
		conn = getConn();
		String sql = "SELECT * FROM emp2";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<EmpVO> list = new ArrayList<>();
			while (rs.next()) {
				EmpVO emp = new EmpVO();
				emp.setEmpno(rs.getInt("EMPNO"));
				emp.setEname(rs.getString("ENAME"));
				emp.setHiredate(rs.getDate("HIREDATE"));
				emp.setSal(rs.getInt("SAL"));
				emp.setDeptno(rs.getInt("DEPTNO"));
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
	
	public boolean bgetEmp(int empno,String ename) {

		conn = getConn();
		String sql = "select * from emp2 where empno=? and ename =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, empno);
			pstmt.setString(2, ename);
			rs = pstmt.executeQuery();
			List<EmpVO> list = new ArrayList<>();
			while (rs.next()) {
				EmpVO emp = new EmpVO();
				emp.setEmpno(rs.getInt("EMPNO"));
				emp.setEname(rs.getString("ENAME"));
				emp.setHiredate(rs.getDate("HIREDATE"));
				emp.setSal(rs.getInt("SAL"));
				emp.setDeptno(rs.getInt("DEPTNO"));
				list.add(emp);
			}
			if(list.size()>0){
			return true;
			}
			else{return false;}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return false;
	}
	
	public List<EmpVO> getPageAll() {
		conn = getConn();
		String sql = "select * from"
				+ "(select trunc((rownum-1)/12)+1 as page,"
				+ "lpad('¡¡',(level-1)*5,'¡¡')||DECODE(LEVEL,1,'','¦¦')||ename as ename,"
				+ "empno,hiredate,sal,deptno " + "from emp2 "
				+ "start with ename='KING'connect by prior empno=mgr" + ")";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<EmpVO> list = new ArrayList<>();
			while (rs.next()) {
				EmpVO emp = new EmpVO();
				emp.setEmpno(rs.getInt("EMPNO"));
				emp.setEname(rs.getString("ENAME"));
				emp.setHiredate(rs.getDate("HIREDATE"));
				emp.setSal(rs.getInt("SAL"));
				emp.setDeptno(rs.getInt("DEPTNO"));
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
	
	public List<EmpVO> getPageEmp(int empno) {
		conn = getConn();
		String sql = "select * from"
				+ "(select trunc((rownum-1)/12)+1 as page,"
				+ "lpad('¡¡',(level-1)*5,'¡¡')||DECODE(LEVEL,1,'','¦¦')||ename as ename,"
				+ "empno,hiredate,sal,deptno " + "from emp2 "
				+ "start with ename='KING'connect by prior empno=mgr" + ")"
				+ "where empno=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, empno);
			rs = pstmt.executeQuery();
			List<EmpVO> list = new ArrayList<>();
			while (rs.next()) {
				EmpVO emp = new EmpVO();
				emp.setEmpno(rs.getInt("EMPNO"));
				emp.setEname(rs.getString("ENAME"));
				emp.setHiredate(rs.getDate("HIREDATE"));
				emp.setSal(rs.getInt("SAL"));
				emp.setDeptno(rs.getInt("DEPTNO"));
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
	public int getTotalRows() {
		conn = getConn();
		String sql = "SELECT count(*) FROM EMP2";
		int totalRows = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				totalRows = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return totalRows;
	}

	public EmpVO getEmp(int empno) {

		conn = getConn();
		String sql = "select * from emp2 where empno=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, empno);
			rs = pstmt.executeQuery();
			EmpVO emp = new EmpVO();
			while (rs.next()) {
				emp.setEmpno(rs.getInt("EMPNO"));
				emp.setEname(rs.getString("ENAME"));
				emp.setHiredate(rs.getDate("HIREDATE"));
				emp.setSal(rs.getInt("SAL"));
				emp.setDeptno(rs.getInt("DEPTNO"));
			}
			return emp;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return null;
	}
	
	public boolean update(int empno, int deptno, int sal) {

		conn = getConn();
		String sql = "update emp2 set deptno=?, sal=? where empno=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, deptno);
			pstmt.setInt(2, sal);
			pstmt.setInt(3, empno);
			pstmt.executeUpdate();

			// FreeboardVO FreeData=new FreeboardVO();
			// FreeData.setHitcnt(rs.getInt("f_hitcnt"));
			return true;
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			closeAll();

		}
		return false;
	}

	public boolean delete(int empno) {
		conn = getConn();
		
		String sql = "delete from emp2 where empno=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, empno);
			pstmt.executeUpdate();

			// FreeboardVO FreeData=new FreeboardVO();
			// FreeData.setHitcnt(rs.getInt("f_hitcnt"));
			return true;
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			closeAll();

		}
		return false;
	}

	public boolean addEmp(EmpVO emp) {
		conn = getConn();
		String sql = "insert into emp2(empno,ename,deptno,sal,hiredate,job,mgr) values(?,?,?,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, emp.getEmpno());
			pstmt.setString(2, emp.getEname());
			pstmt.setInt(3, emp.getDeptno());
			pstmt.setInt(4, emp.getSal());
			pstmt.setDate(5, emp.getHiredate());
            pstmt.setString(6, "PARTTIME");
            pstmt.setInt(7, 7839);
			pstmt.executeUpdate();

			// FreeboardVO FreeData=new FreeboardVO();
			// FreeData.setHitcnt(rs.getInt("f_hitcnt"));
			return true;
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			closeAll();

		}
		return false;
	}

	public boolean mgrCheck(int empno) {
		
		conn = getConn();
		String sql = "SELECT * FROM emp2 where mgr=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, empno);
			
			rs = pstmt.executeQuery();
			if (!rs.next()) {return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
	
		return false;
	}

	public boolean checkId(int id) {
		
		conn = getConn();
		String sql = "SELECT * FROM emp2 where empno=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			
			rs = pstmt.executeQuery();
			if (!rs.next()) {return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		
		return false;
	}

}
