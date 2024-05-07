package org.jeju.dto;

public class Member {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String tel;
	private String jdate;
	private String addr;
	private String postcode;
	
	public Member() { }

	public Member(String id, String pw, String name, String email, String tel, String jdate, String addr,
			String postcode) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.jdate = jdate;
		this.addr = addr;
		this.postcode = postcode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getJdate() {
		return jdate;
	}

	public void setJdate(String jdate) {
		this.jdate = jdate;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", pw=" + pw + ", name=" + name + ", email=" + email + ", tel=" + tel + ", jdate="
				+ jdate + ", addr=" + addr + ", postcode=" + postcode + "]";
	}
}