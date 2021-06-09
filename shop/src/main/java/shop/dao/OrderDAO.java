package shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.model.OrderBean;

@Repository
public class OrderDAO {
	
	@Autowired
	private SqlSession session;
	
	public OrderBean getOrderOne(String product_id) throws Exception {
		OrderBean order = session.selectOne("Orderns.orderUser", product_id);
		return order;
	}
	
}
