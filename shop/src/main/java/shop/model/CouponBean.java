package shop.model;

import java.util.Date;

public class CouponBean {
	private int coupon_id;
	private String coupon_name;
	private int coupon_discount;
	private Date coupon_date;
	private Date coupon_expiration;
	private String member_id;
	
	public int getCoupon_id() {
		return coupon_id;
	}
	public void setCoupon_id(int coupon_id) {
		this.coupon_id = coupon_id;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public int getCoupon_discount() {
		return coupon_discount;
	}
	public void setCoupon_discount(int coupon_discount) {
		this.coupon_discount = coupon_discount;
	}
	public Date getCoupon_date() {
		return coupon_date;
	}
	public void setCoupon_date(Date coupon_date) {
		this.coupon_date = coupon_date;
	}
	public Date getCoupon_expiration() {
		return coupon_expiration;
	}
	public void setCoupon_expiration(Date coupon_expiration) {
		this.coupon_expiration = coupon_expiration;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	}
