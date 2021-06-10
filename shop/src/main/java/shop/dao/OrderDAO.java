package shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import shop.model.OrderDetailBean;
import shop.model.OrderBean;

@Repository
public class OrderDAO {
	
	@Autowired
	private SqlSession session;


	public void orderDetailAdd(OrderDetailBean order) {
		session.insert("Orderns.orderDetailAdd", order);
	}

	public OrderDetailBean getOrderDetail(int order_detail_pk) {
		OrderDetailBean orderDetail = new OrderDetailBean();
		orderDetail = session.selectOne("Orderns.getOrderDetail", order_detail_pk);
		return orderDetail;
	}

	
	public OrderBean getOrderOne(String product_id) throws Exception {
		OrderBean order = session.selectOne("Orderns.orderUser", product_id);
		return order;
	}
	

}
