package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.ProductDAO;

@Service
public class ProductService {
	@Autowired
	private ProductDAO pd;
}
