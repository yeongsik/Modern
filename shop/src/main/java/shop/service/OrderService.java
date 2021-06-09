package shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.OrderDAO;
import shop.model.OrderDetailBean;

@Service
public class OrderService {
	@Autowired
	private OrderDAO od;
	
	public void orderDetailAdd(OrderDetailBean order) {
		od.orderDetailAdd(order); 
		
	}

	public OrderDetailBean getOrderDetail(int order_detail_pk) {
		OrderDetailBean orderDetail = new OrderDetailBean();
		orderDetail = od.getOrderDetail(order_detail_pk);
		return orderDetail;
	}
}
