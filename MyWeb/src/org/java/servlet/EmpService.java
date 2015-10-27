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
		// 내비게이션시 필요한 요소집단
		NaviVO nav = new NaviVO();
		nav.setCurrPage(pg);// 현재 페이지
		nav.setLinks(getNavlinks(pg, rowsPerPage, numsPerPage));// 현재 페이지가 속한
																// 페이지 링크군
		nav.setLeftMore(leftMore);// 왼쪽 이동 작성여부
		nav.setRightMore(rightMore);// 오른쪽 이동 작성여부
		nav.setTatalPages(totalPg);
		return nav;
	}

	private int[] getNavlinks(int page, int rowsPerPage, int numsPerPage) {

		int totalPages = (new EmpDAO().getTotalRows() - 1) / rowsPerPage + 1;
		// 로우넘의 최대 숫자(총 로우넘 갯수와 동일)에 1을 빼서 한페이지당 행수로 나누고 1을 더하면 총 페이지 수가 나온다(한
		// 페이지에 들어가는 행을 구하는 식과 연관성있음)
		totalPg = totalPages;

		int tmp = (page - 1) / numsPerPage + 1;
		// 현 페이지가 속하는 페이지 집단군의 산출(어느 행이 어느 페이지에 들어가는 가를 산출하는 식과 동일)
		int end = tmp * numsPerPage;
		// 페이지 집단군과 페이지 집단군별 최대 행수를 곱하면 그 페이지 집단군의 최대 숫자가 나온다.
		int start = (tmp - 1) * numsPerPage + 1;
		// 해당 페이지 집단군 바로 전 페단군의 최대 숫자에 1을 더하면 현재 페이지 집단군의 최소 숫자가 나온다
		if (start == 1)
			leftMore = false;
		// 혹시 그 최소 숫자가 1일 경우 왼쪽(<<) 링크를 출력하지 않도록 출력시 확인하는 boolean 갚을 false로 준다
		else
			leftMore = true;
		// 아닐 경우(1보다 클경우) 왼쪽 링크 출력시 확인하는 boolean 값을 true로 준다
		if (end >= totalPages) {
			end = totalPages;
			rightMore = false;
			// 혹시 최대 숫자가 총 페이지 숫자보다 크거나 같을 경우 오른쪽(>>) 링크를 출력하지 않도록 출력시 확인하는
			// boolean 값을 false로 준다
		} else
			rightMore = true;
		// 아닐경우(현 페이지 집단의 최대수보다 총 페이지 숫자가 클경우) 오른족 링크 출력시 확인하는 boolean 값을 true로
		// 준다
		int[] links = new int[end - start + 1];
		// 페이지 넘버들이 담긴 배열을 만든다. 그 크기는 최대 숫자-최소숫자+1로 하며 그 이유는 최대 숫자와 최소 숫자의 차이가
		// 일정하다고 할수 없기 때문

		// 예) 5페이지 씩 출력하는 페이지 링크 집단의 페이지수가 총 13 페이지일 경우 1,2번째 링크군의 최소 최대 차는 4이지만
		// 3번째
		// 링크 군의 최대, 최소차이는 2 가된다
		for (int num = start, i = 0; num <= end; num++, i++) {
			links[i] = num;
		}
		// 루프를 통해 배열에 시작 넘버부터 마지막 넘버까지 집어 넣는다.
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
		//브라우저에 전달되는 모든 사원정보 접수
		EmpVO emp= new EmpVO();
		String sDate = request.getParameter("hiredate");
        SimpleDateFormat sdf= new SimpleDateFormat("yyyy-mm-dd");
		//모든 파라미터를 EmpVO 객체에 담는다
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
