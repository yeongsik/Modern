package shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.OrderDAO;
import shop.model.OrderDetailBean;
import shop.model.OrderBean;


@Service
public class OrderService {
	
	@Autowired
	private OrderDAO od;
	
	public void orderDetailAdd(OrderDetailBean order) throws Exception {
		od.orderDetailAdd(order); 
	}

	public OrderDetailBean getOrderDetail(int order_detail_pk) throws Exception {
		OrderDetailBean orderDetail = new OrderDetailBean();
		orderDetail = od.getOrderDetail(order_detail_pk);
		return orderDetail;
	}
  
	public OrderBean getOrderOne(String product_id) throws Exception {
		return od.getOrderOne(product_id);
	}
	
	public void removeOrderDetail(int order_detail_pk) throws Exception {
		od.removeOrderDetail(order_detail_pk);
	}
	public void updateOrderDetail(OrderDetailBean orderDetail) throws Exception {
		od.updateOrderDetail(orderDetail);
	}

	public void insertOrder(OrderBean addOrder) throws Exception {
		od.insertOrder(addOrder);
	}
}
