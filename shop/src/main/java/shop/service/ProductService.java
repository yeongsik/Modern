package shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.ProductDAO;
import shop.model.ProductBean;

@Service
public class ProductService {
	@Autowired
	private ProductDAO pd;
	
	/* 상품목록 */
	public List<ProductBean> getProductList_Top_tshirts(int page) throws Exception {
		return pd.getProductList_Top_tshirts(page);
	}
	public List<ProductBean> getProductList_Top_shirts(int page) throws Exception {
		return pd.getProductList_Top_shirts(page);
	}
	public List<ProductBean> getProductList_Top_knit(int page) throws Exception {
		System.out.println("service_top_knit");
		return pd.getProductList_Top_knit(page);
	}
	public List<ProductBean> getProductList_Bottom_jean(int page) throws Exception {
		return pd.getProductList_Bottom_jean(page);
	}
	public List<ProductBean> getProductList_Bottom_pants(int page) throws Exception {
		return pd.getProductList_Bottom_pants(page);
	}
	public List<ProductBean> getProductList_Bottom_shorts(int page) throws Exception {
		return pd.getProductList_Bottom_shorts(page);
	}
	public List<ProductBean> getProductList_Outer_jacket(int page) throws Exception {
		return pd.getProductList_Outer_jacket(page);
	}
	public List<ProductBean> getProductList_Outer_coat(int page) throws Exception {
		return pd.getProductList_Outer_coat(page);
	}
	public List<ProductBean> getProductList_Acc_shoes(int page) throws Exception {
		return pd.getProductList_Acc_shoes(page);
	}
	public List<ProductBean> getProductList_Acc_socks(int page) throws Exception {
		return pd.getProductList_Acc_socks(page);
	}
	public List<ProductBean> getProductList_Acc_jewelry(int page) throws Exception {
		return pd.getProductList_Acc_jewelry(page);
	}
	
	/* 상품 목록 수 */
	public int getProductCount(String category) throws Exception {
		return pd.getProductCount(category);
	}
}
