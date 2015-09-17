package org.java.servlet;

public class GuguService {

	public String crateGugu(String sDan) {
		int nDan = 2;
		if (sDan != null && !sDan.equals("")) {
			nDan = Integer.parseInt(sDan);
		}
		String gugu = "";
		for (int i = 1; i <= 9; i++) {
			gugu += nDan + " X " + i + " = " + (nDan * i) + "<br> \n";
		}

		return gugu;
	}
}
