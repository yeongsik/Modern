package shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.model.OrderDetailBean;

@Repository
public class OrderDAO {
	@Autowired
	private SqlSession session;

	public void orderDetailAdd(OrderDetailBean order) {
		session.insert("Order.orderDetailAdd", order);
	}

	public OrderDetailBean getOrderDetail(int order_detail_pk) {
		OrderDetailBean orderDetail = new OrderDetailBean();
		orderDetail = session.selectOne("Order.getOrderDetail", order_detail_pk);
		return orderDetail;
	}
}
