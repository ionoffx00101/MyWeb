package org.kdea.web.cart;

public class EmpVO {
	private int empno;
	private String ename;
	private java.sql.Date hiredate;
	private int sal;
	private int deptno;


	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public java.sql.Date getHiredate() {
		return hiredate;
	}

	public void setHiredate(java.sql.Date hiredate) {
		this.hiredate = hiredate;
	}

	public int getSal() {
		return sal;
	}

	public void setSal(int sal) {
		this.sal = sal;
	}

	public int getDeptno() {
		return deptno;
	}

	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}

}
