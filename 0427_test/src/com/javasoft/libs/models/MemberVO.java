package com.javasoft.libs.models;

public class MemberVO {
	private String id;
	private String dept;
	private int gi;//기본급
	private int jic;//직무급
	private int ya;//야금수당
	private int ga;//가족수당
	private int chong;//총지급액
	private int so;//소득세
	private int sil;//실수령액
	
	public MemberVO(String id, String dept, int gi, int jic, int ya, int ga, int chong, int so, int sil) {
		super();
		this.id = id;
		this.dept = dept;
		this.gi = gi;
		this.jic = jic;
		this.ya = ya;
		this.ga = ga;
		this.chong = chong;
		this.so = so;
		this.sil = sil;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public int getGi() {
		return gi;
	}
	public void setGi(int gi) {
		this.gi = gi;
	}
	public int getJic() {
		return jic;
	}
	public void setJic(int jic) {
		this.jic = jic;
	}
	public int getYa() {
		return ya;
	}
	public void setYa(int ya) {
		this.ya = ya;
	}
	public int getGa() {
		return ga;
	}
	public void setGa(int ga) {
		this.ga = ga;
	}
	public int getChong() {
		return chong;
	}
	public void setChong(int chong) {
		this.chong = chong;
	}
	public int getSo() {
		return so;
	}
	public void setSo(int so) {
		this.so = so;
	}
	public int getSil() {
		return sil;
	}
	public void setSil(int sil) {
		this.sil = sil;
	}
	
	
	
	
}
