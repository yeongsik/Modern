package shop.model;

public class CartBean {
	public int cart_id;
	public String member_id;
	public int order_detail_pk;
	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getOrder_detail_pk() {
		return order_detail_pk;
	}
	public void setOrder_detail_pk(int order_detail_pk) {
		this.order_detail_pk = order_detail_pk;
	}
}
