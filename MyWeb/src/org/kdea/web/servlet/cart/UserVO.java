package org.kdea.web.servlet.cart;

public class UserVO { //login 할때 쓰는 VO  로그인 여부 체크할때도 사용한다.

	private String id;
	private String name;
	private boolean check;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean getCheck() {
		return check;
	}
	public void setCheck(boolean check) {
		this.check = check;
	}

	
}
