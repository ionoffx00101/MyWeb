package org.java.web;

public class Member {
private String ID;
private String pass;
public Member(String iD, String pass) {
	super();
	ID = iD;
	this.pass = pass;
}
public String getID() {
	return ID;
}
public void setID(String iD) {
	ID = iD;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}


}
