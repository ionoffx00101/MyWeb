package org.kdea.web.counter;

import java.io.*;

import javax.servlet.ServletContext;

public class CountMgr {

	private ServletContext application;

	public CountMgr(ServletContext application) {
		this.application = application;

	}

	public int increase() {

		Object cntObj = application.getAttribute("cnt");

		if (cntObj == null) {
			// String path = "c://test/cnt.data";
			String realPath = application.getInitParameter("countPath");

			int cnt = 0;
			try {
				DataInputStream din = new DataInputStream(new FileInputStream(realPath));
				cnt = din.readInt();

			} catch (IOException e) {
				application.log("시스템오류");
				DataOutputStream dout;
				try {
					dout = new DataOutputStream(new FileOutputStream(realPath));
					dout.writeInt(0);
					dout.close();
				} catch (Exception e1) {
					e1.printStackTrace();
				}

			}
			cntObj = new Integer(cnt);
		}
		int cnt = (Integer) cntObj;
		application.setAttribute("cnt", ++cnt);
	
		if (cnt % 10 == 0) {
			// String path = "c://test/cnt.data";
			String realPath = application.getInitParameter("countPath");
			DataOutputStream dout;
			try {
				dout = new DataOutputStream(new FileOutputStream(realPath));
				dout.writeInt(cnt);
				dout.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}return cnt;
	}
}
