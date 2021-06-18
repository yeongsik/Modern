package shop.model;

import java.util.Date;

public class OrderBean {
	
	private String order_id;
	private String member_id;
	private String receiver_name;
	private int receiver_tel;
	private int receiver_post;
	private String receiver_addr1;
	private String receiver_addr_detail;
	private Date order_date;
	private int used_point;
	private int total_price;
	private int order_state;
	private int delivery_price;
	private int invoice_num;
	private int receiver_tel2;
	private String order_memo;
	
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getReceiver_tel() {
		return receiver_tel;
	}
	public void setReceiver_tel(int receiver_tel) {
		this.receiver_tel = receiver_tel;
	}
	public int getReceiver_post() {
		return receiver_post;
	}
	public void setReceiver_post(int receiver_post) {
		this.receiver_post = receiver_post;
	}
	public String getReceiver_addr1() {
		return receiver_addr1;
	}
	public void setReceiver_addr1(String receiver_addr1) {
		this.receiver_addr1 = receiver_addr1;
	}
	public String getReceiver_addr_detail() {
		return receiver_addr_detail;
	}
	public void setReceiver_addr_detail(String receiver_addr_detail) {
		this.receiver_addr_detail = receiver_addr_detail;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public int getUsed_point() {
		return used_point;
	}
	public void setUsed_point(int used_point) {
		this.used_point = used_point;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public int getOrder_state() {
		return order_state;
	}
	public void setOrder_state(int order_state) {
		this.order_state = order_state;
	}
	public int getDelivery_price() {
		return delivery_price;
	}
	public void setDelivery_price(int delivery_price) {
		this.delivery_price = delivery_price;
	}
	public String getReceiver_name() {
		return receiver_name;
	}
	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}
	public int getInvoice_num() {
		return invoice_num;
	}
	public void setInvoice_num(int invoice_num) {
		this.invoice_num = invoice_num;
	}
	public String getOrder_memo() {
		return order_memo;
	}
	public void setOrder_memo(String order_memo) {
		this.order_memo = order_memo;
	}
	public int getReceiver_tel2() {
		return receiver_tel2;
	}
	public void setReceiver_tel2(int receiver_tel2) {
		this.receiver_tel2 = receiver_tel2;
	}
	
}
