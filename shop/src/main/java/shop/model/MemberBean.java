package shop.model;

public class MemberBean {
	private String member_id;
	private String pw;
	private String email;
	private String domain;
	private int email_auth;
	private int phone;
	private int birth;
	private int gender;
	private String nickname;
	private int accept_mail;
	private int purchase_point;
	private int grade_point;
	private String join_date;
	private String grade;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public int getEmail_auth() {
		return email_auth;
	}
	public void setEmail_auth(int email_auth) {
		this.email_auth = email_auth;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getAccept_mail() {
		return accept_mail;
	}
	public void setAccept_mail(int accept_mail) {
		this.accept_mail = accept_mail;
	}
	public int getPurchase_point() {
		return purchase_point;
	}
	public void setPurchase_point(int purchase_point) {
		this.purchase_point = purchase_point;
	}
	public int getGrade_point() {
		return grade_point;
	}
	public void setGrade_point(int grade_point) {
		this.grade_point = grade_point;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
}
