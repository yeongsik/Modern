package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.OrderDAO;
import shop.model.OrderBean;

@Service
public class OrderService {
	
	@Autowired
	private OrderDAO od;
	
	public OrderBean getOrderOne(String product_id) throws Exception {
		return od.getOrderOne(product_id);
	}
}
