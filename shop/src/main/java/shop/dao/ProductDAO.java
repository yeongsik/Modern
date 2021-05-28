package shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.model.ProductBean;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSession session;
	
	/* 상품 목록 */
	public List<ProductBean> getProductList_Top_tshirts(int page ) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_top_tshirts",page);
		return list;
	}
	public List<ProductBean> getProductList_Top_shirts(int page ) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_top_shirts",page);
		return list;
	}
	public List<ProductBean> getProductList_Top_knit(int page ) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_top_knit",page);
		return list;
	}
	public List<ProductBean> getProductList_Bottom_jean(int page) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_bottom_jean" , page);
		return list;
	}
	public List<ProductBean> getProductList_Bottom_pants(int page) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_bottom_pants" , page);
		return list;
	}
	public List<ProductBean> getProductList_Bottom_shorts(int page) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_bottom_shorts" , page);
		return list;
	}
	public List<ProductBean> getProductList_Outer_jacket(int page) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_outer_jacket" , page);
		return list;
	}
	public List<ProductBean> getProductList_Outer_coat(int page) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_outer_coat" , page);
		return list;
	}
	public List<ProductBean> getProductList_Acc_shoes(int page) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_acc_shoes" , page);
		return list;
	}
	public List<ProductBean> getProductList_Acc_socks(int page) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_acc_socks" , page);
		return list;
	}
	public List<ProductBean> getProductList_Acc_jewelry(int page) throws Exception {
		List<ProductBean> list = session.selectList("Product.productlist_acc_jewelry" , page);
		return list;
	}
	
	public int getProductCount(String category) throws Exception {
		int count = 0;
		count = ((Integer) session.selectOne("Product.productcount" , category)).intValue();
		
		return count;
	}
}
