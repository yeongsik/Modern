package shop.model;

import java.util.Date;

public class ProductBean {
	
	private int product_id;
	private String category_id;
	private String product_name;
	private int view_count;
	private int product_price;
	private int stock;
	private Date product_date;
	private int color;
	private String size_id;
	private int product_detail;
	private int product_discount;
	
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Date getProduct_date() {
		return product_date;
	}
	public void setProduct_date(Date product_date) {
		this.product_date = product_date;
	}
	public int getColor() {
		return color;
	}
	public void setColor(int color) {
		this.color = color;
	}
	public String getSize_id() {
		return size_id;
	}
	public void setSize_id(String size_id) {
		this.size_id = size_id;
	}
	public int getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(int product_detail) {
		this.product_detail = product_detail;
	}
	public int getProduct_discount() {
		return product_discount;
	}
	public void setProduct_discount(int product_discount) {
		this.product_discount = product_discount;
	}
	
	
}
