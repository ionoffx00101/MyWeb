package org.java.servlet;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

public class MemberService {
	HttpServletRequest request;

	public MemberService(HttpServletRequest request) {
		this.request = request;
	}

	

	public String serchByNum() {
		String ad = "C:/Test/memInfo.txt";
		try {
			request.setCharacterEncoding("euc-kr");// 요청에 한글을 적용함
			String key = request.getParameter("key");

			BufferedReader br = new BufferedReader(new FileReader(ad));
			String line;
			MemVO mv = new MemVO();

			while ((line = br.readLine()) != null) {
				String[] parts = line.split(" ");

				if (parts[0].equals(key)) {
					mv.setmNum(Integer.parseInt(parts[0]));
					mv.setmName(parts[1]);
					mv.seteMail(parts[2]);
				}
			}

			request.setAttribute("mInfo", mv);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/member.jsp";
	}

	public String serchByName() {
		String ad = "C:/Test/memInfo.txt";
		try {
			request.setCharacterEncoding("euc-kr");// 요청에 한글을 적용함
			String key = request.getParameter("key");

			BufferedReader br = new BufferedReader(new FileReader(ad));
			String line;
			MemVO mv = new MemVO();

			while ((line = br.readLine()) != null) {
				String[] parts = line.split(" ");
				if (parts[1].equals(key)) {
					mv.setmNum(Integer.parseInt(parts[0]));
					mv.setmName(parts[1]);
					mv.seteMail(parts[2]);
				}
			}
			request.setAttribute("mInfo", mv);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/member.jsp";
	}

	public String joinPage() {
		return "/member_join.jsp";
	}
	public String checkId() {
		String sId = request.getParameter("id");
		int id= Integer.valueOf(sId);
		
		
		EmpDAO ed =new EmpDAO();
		boolean idCheck= ed.checkId(id);
		if(!idCheck){sId="";}
		request.setAttribute("idCheck", idCheck);
		request.setAttribute("id", sId);
		
		return "/member_join.jsp";
	}
	public String join() {
		MemverVO mv =new MemverVO(); 
		mv.setId(request.getParameter("id"));
		mv.setPwd(request.getParameter("pwd"));
		mv.setEmail(request.getParameter("email"));
		mv.setPhone(request.getParameter("phone"));
		mv.setGender(request.getParameter("gender"));
		mv.setPersnal(request.getParameter("intro"));
		mv.setHobby(request.getParameterValues("hobby"));
		mv.setInterest(request.getParameter("interest"));
		mv.setExp_year(Integer.valueOf(request.getParameter("exp-year")));
		
		
		String sDate = request.getParameter("birthYear")+"-"+request.getParameter("birthMonth")+"-"+request.getParameter("birthDay");
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-mm-dd");
		
		
		try {
			java.util.Date tmpDate = sdf.parse(sDate);
			java.sql.Date hireDate= new java.sql.Date(tmpDate.getTime());
			mv.setBirth(hireDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
		
		
		
		EmpDAO ed =new EmpDAO();
		ed.memberjoin(mv);
		
		return "/member_join.jsp";
	}
}
