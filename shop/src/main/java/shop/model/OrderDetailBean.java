package shop.model;

public class OrderDetailBean {
	private int order_detail_pk;
	private int product_id;
	private int coupon_id;
	private int purchase_number;
	private String order_id;
	private String choose_size;
	private int detail_state;
	// 0 , 1 , 2
	
	public int getOrder_detail_pk() {
		return order_detail_pk;
	}
	public void setOrder_detail_pk(int order_detail_pk) {
		this.order_detail_pk = order_detail_pk;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getCoupon_id() {
		return coupon_id;
	}
	public void setCoupon_id(int coupon_id) {
		this.coupon_id = coupon_id;
	}
	public int getPurchase_number() {
		return purchase_number;
	}
	public void setPurchase_number(int purchase_number) {
		this.purchase_number = purchase_number;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getChoose_size() {
		return choose_size;
	}
	public void setChoose_size(String choose_size) {
		this.choose_size = choose_size;
	}
	public int getDetail_state() {
		return detail_state;
	}
	public void setDetail_state(int detail_state) {
		this.detail_state = detail_state;
	}
}
