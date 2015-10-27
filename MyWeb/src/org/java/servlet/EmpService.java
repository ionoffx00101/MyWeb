package org.java.servlet;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class EmpService {
	
	private boolean leftMore, rightMore;
	HttpServletRequest request;
	int pg;
	int totalPg;
	int rowsPerPage = 3;
	int numsPerPage = 3;

	public EmpService(HttpServletRequest request) {
		this.request = request;
	}

	public boolean isLeftMore() {
		return leftMore;
	}

	public void setLeftMore(boolean leftMore) {
		this.leftMore = leftMore;
	}

	public boolean isRightMore() {
		return rightMore;
	}

	public void setRightMore(boolean rightMore) {
		this.rightMore = rightMore;
	}

	public String list() {
		String sPage = request.getParameter("page");
		if (sPage != null) {
			pg = Integer.valueOf(sPage);
		} else {
			pg = 1;
		}
		List<EmpVO> list = new EmpDAO().getPageEmp(pg);
		request.setAttribute("list", list);
		NaviVO nav = getNaviVO();
		request.setAttribute("nav", nav);
		return "/empList.jsp";

	}

	private NaviVO getNaviVO() {
		// ������̼ǽ� �ʿ��� �������
		NaviVO nav = new NaviVO();
		nav.setCurrPage(pg);// ���� ������
		nav.setLinks(getNavlinks(pg, rowsPerPage, numsPerPage));// ���� �������� ����
																// ������ ��ũ��
		nav.setLeftMore(leftMore);// ���� �̵� �ۼ�����
		nav.setRightMore(rightMore);// ������ �̵� �ۼ�����
		nav.setTatalPages(totalPg);
		return nav;
	}

	private int[] getNavlinks(int page, int rowsPerPage, int numsPerPage) {

		int totalPages = (new EmpDAO().getTotalRows() - 1) / rowsPerPage + 1;
		// �ο���� �ִ� ����(�� �ο�� ������ ����)�� 1�� ���� ���������� ����� ������ 1�� ���ϸ� �� ������ ���� ���´�(��
		// �������� ���� ���� ���ϴ� �İ� ����������)
		totalPg = totalPages;

		int tmp = (page - 1) / numsPerPage + 1;
		// �� �������� ���ϴ� ������ ���ܱ��� ����(��� ���� ��� �������� ���� ���� �����ϴ� �İ� ����)
		int end = tmp * numsPerPage;
		// ������ ���ܱ��� ������ ���ܱ��� �ִ� ����� ���ϸ� �� ������ ���ܱ��� �ִ� ���ڰ� ���´�.
		int start = (tmp - 1) * numsPerPage + 1;
		// �ش� ������ ���ܱ� �ٷ� �� ��ܱ��� �ִ� ���ڿ� 1�� ���ϸ� ���� ������ ���ܱ��� �ּ� ���ڰ� ���´�
		if (start == 1)
			leftMore = false;
		// Ȥ�� �� �ּ� ���ڰ� 1�� ��� ����(<<) ��ũ�� ������� �ʵ��� ��½� Ȯ���ϴ� boolean ���� false�� �ش�
		else
			leftMore = true;
		// �ƴ� ���(1���� Ŭ���) ���� ��ũ ��½� Ȯ���ϴ� boolean ���� true�� �ش�
		if (end >= totalPages) {
			end = totalPages;
			rightMore = false;
			// Ȥ�� �ִ� ���ڰ� �� ������ ���ں��� ũ�ų� ���� ��� ������(>>) ��ũ�� ������� �ʵ��� ��½� Ȯ���ϴ�
			// boolean ���� false�� �ش�
		} else
			rightMore = true;
		// �ƴҰ��(�� ������ ������ �ִ������ �� ������ ���ڰ� Ŭ���) ������ ��ũ ��½� Ȯ���ϴ� boolean ���� true��
		// �ش�
		int[] links = new int[end - start + 1];
		// ������ �ѹ����� ��� �迭�� �����. �� ũ��� �ִ� ����-�ּҼ���+1�� �ϸ� �� ������ �ִ� ���ڿ� �ּ� ������ ���̰�
		// �����ϴٰ� �Ҽ� ���� ����

		// ��) 5������ �� ����ϴ� ������ ��ũ ������ ���������� �� 13 �������� ��� 1,2��° ��ũ���� �ּ� �ִ� ���� 4������
		// 3��°
		// ��ũ ���� �ִ�, �ּ����̴� 2 ���ȴ�
		for (int num = start, i = 0; num <= end; num++, i++) {
			links[i] = num;
		}
		// ������ ���� �迭�� ���� �ѹ����� ������ �ѹ����� ���� �ִ´�.
		return links;
	}

	public String desc() {
		String sEmpno = request.getParameter("empno");
		int empno = Integer.valueOf(sEmpno);
		EmpVO DescEmp = new EmpDAO().getEmp(empno);
		request.setAttribute("descEmp", DescEmp);
		return "/descEmp.jsp";
	}

	public String edit() {
		String sEmpno = request.getParameter("empno");
		int empno = Integer.valueOf(sEmpno);
		EmpVO emp = new EmpDAO().getEmp(empno);
		request.setAttribute("emp", emp);
		return "/empEdit.jsp";
	}

	public String update() {
		String sEmpno = request.getParameter("empno");
		int empno = Integer.valueOf(sEmpno);
		/* System.out.println(empno); */
		String sDeptno = request.getParameter("deptno");
		int deptno = Integer.valueOf(sDeptno);
		/* System.out.println(deptno); */
		String sSal = request.getParameter("sal");
		int sal = Integer.valueOf(sSal);
		/* System.out.println(sal); */

		EmpDAO ed = new EmpDAO();
		boolean updated = ed.update(empno, deptno, sal);
		request.setAttribute("updated", updated);

		EmpVO emp = ed.getEmp(empno);
		request.setAttribute("descEmp", emp);
		return "/descEmp.jsp";
	}

	public String delete() {
		String sEmpno = request.getParameter("empno");
		int empno = Integer.valueOf(sEmpno);

		EmpDAO ed = new EmpDAO();
		boolean deleted;
		deleted = ed.mgrCheck(empno);
		
		
		if(deleted)deleted = ed.delete(empno);
		request.setAttribute("deleted", deleted);

		return list();
	}

	public String empAdd() {
		//�������� ���޵Ǵ� ��� ������� ����
		EmpVO emp= new EmpVO();
		String sDate = request.getParameter("hiredate");
        SimpleDateFormat sdf= new SimpleDateFormat("yyyy-mm-dd");
		//��� �Ķ���͸� EmpVO ��ü�� ��´�
        int empno= Integer.valueOf(request.getParameter("empno"));
        int deptno= Integer.valueOf(request.getParameter("deptno"));
        int sal=Integer.valueOf(request.getParameter("sal"));
        String ename= request.getParameter("ename");
        
        emp.setEname(ename);
        emp.setEmpno(empno);
        emp.setDeptno(deptno);
        emp.setSal(sal);
        
        try {
        	java.util.Date tmpDate=sdf.parse(sDate);
        	java.sql.Date hireDate= new java.sql.Date(tmpDate.getTime());
        	emp.setHiredate(hireDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        EmpDAO dao= new EmpDAO();
        boolean empAdded = dao.addEmp(emp);
        request.setAttribute("empAdded", empAdded);
        
        return list();
	}

}
