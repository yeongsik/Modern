package shop.model;

import java.util.Date;

public class NoticeBean {

  private String notice_id;
  private String notice_subject;
  private String notice_writer;
  private String notice_content;
  private Date notice_date;
  private int notice_view;

  public String getNotice_id() {
    return notice_id;
  }

  public void setNotice_id(String notice_id) {
    this.notice_id = notice_id;
  }

  public String getNotice_subject() {
    return notice_subject;
  }

  public void setNotice_subject(String notice_subject) {
    this.notice_subject = notice_subject;
  }

  public String getNotice_writer() {
    return notice_writer;
  }

  public void setNotice_writer(String notice_writer) {
    this.notice_writer = notice_writer;
  }

  public String getNotice_content() {
    return notice_content;
  }

  public void setNotice_content(String notice_content) {
    this.notice_content = notice_content;
  }

  public Date getNotice_date() {
    return notice_date;
  }

  public void setNotice_date(Date notice_date) {
    this.notice_date = notice_date;
  }

  public int getNotice_view() {
    return notice_view;
  }

  public void setNotice_view(int notice_view) {
    this.notice_view = notice_view;
  }

}
