package shop.model;

public class AddressBean {
	private String add_pk;
	private int post;
	private String address1;
	private String address2;
	private String member_id;
	private int address_state;
	
	public String getAdd_pk() {
		return add_pk;
	}
	public void setAdd_pk(String add_pk) {
		this.add_pk = add_pk;
	}
	public int getPost() {
		return post;
	}
	public void setPost(int post) {
		this.post = post;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getAddress_state() {
		return address_state;
	}
	public void setAddress_state(int address_state) {
		this.address_state = address_state;
	}
}
