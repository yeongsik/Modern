package shop.model;

import java.util.Date;

public class PersonalQuestionBean {

	  private int question_id;
	  private String member_id;
	  private String question_subject;
	  private String question_content;
	  private Date question_date;
	  private int question_state;
	  private String question_type;
	  
	public int getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}

	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getQuestion_subject() {
		return question_subject;
	}
	public void setQuestion_subject(String question_subject) {
		this.question_subject = question_subject;
	}
	public String getQuestion_content() {
		return question_content;
	}
	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}
	public Date getQuestion_date() {
		return question_date;
	}
	public void setQuestion_date(Date question_date) {
		this.question_date = question_date;
	}
	public int getQuestion_state() {
		return question_state;
	}
	public void setQuestion_state(int question_state) {
		this.question_state = question_state;
	}
	public String getQuestion_type() {
		return question_type;
	}
	public void setQuestion_type(String question_type) {
		this.question_type = question_type;
	}

	  
	  
	  
}
