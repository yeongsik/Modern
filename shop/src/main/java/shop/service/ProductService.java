package shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.ProductDAO;
import shop.model.ProductBean;
import shop.model.SizeBean;

@Service
public class ProductService {
	@Autowired
	private ProductDAO pd;

	/* 상품목록 */
	public List<ProductBean> getProductList(ProductBean input) throws Exception {
		return pd.getProductList(input);
	}
	public ProductBean getProductOne(int product_id) throws Exception {
		return pd.getProductOne(product_id);
	}

	/* 상품 목록 수 */
	public int getProductCount(ProductBean product) throws Exception {
		return pd.getProductCount(product);
	}
	
	/* 상품 조회수 증가 */ 
	 public void upViewCount(int product_id) throws Exception {
		 pd.upViewCount(product_id); 
	 }
		/* 사이즈 정보 가져오기 */
	 public SizeBean getSize(String size_id) throws Exception {
		 return pd.getSize(size_id);
	 }
}
