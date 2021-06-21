package shop.model;

import java.util.Date;

public class PointBean {
  private String member_id;
  private int acc_point;
  private String acc_type;
  private Date acc_date;

  // 내역 가지고 올 때 쓰는 page
  private int page;

  public String getMember_id() {
    return member_id;
  }

  public void setMember_id(String member_id) {
    this.member_id = member_id;
  }

  public int getAcc_point() {
    return acc_point;
  }

  public void setAcc_point(int acc_point) {
    this.acc_point = acc_point;
  }

  public String getAcc_type() {
    return acc_type;
  }

  public void setAcc_type(String acc_type) {
    this.acc_type = acc_type;
  }

  public Date getAcc_date() {
    return acc_date;
  }

  public void setAcc_date(Date acc_date) {
    this.acc_date = acc_date;
  }

  public int getPage() {
    return page;
  }

  public void setPage(int page) {
    this.page = page;
  }
}
