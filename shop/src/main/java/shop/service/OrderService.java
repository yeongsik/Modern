package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.OrderDAO;

@Service
public class OrderService {
	@Autowired
	private OrderDAO od;
	
}
