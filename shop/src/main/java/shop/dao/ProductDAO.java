package shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import shop.model.ProductBean;
import shop.model.SizeBean;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSession session;

	/* 상품 목록 */
	public List<ProductBean> getProductList(ProductBean input) throws Exception {
		System.out.println("DAO");
		List<ProductBean> list = session.selectList("Productns.productlist", input);
		return list;
	}
	public ProductBean getProductOne(int product_id) throws Exception {
		ProductBean product = session.selectOne("Productns.product_detail", product_id);
		return product;
	}
	public int getProductCount(@ModelAttribute ProductBean product) throws Exception {
		int count = 0;
		count = ((Integer) session.selectOne("Productns.productcount", product)).intValue();
		return count;
	}
	/* 상품 조회수 증가 */
	 public void upViewCount(int product_id) throws Exception {
		 session.update("Productns.upViewCount" , product_id); 
	 }
		/* 사이즈 정보 가져오기 */
	 public SizeBean getSize(String size_id) throws Exception {
		 SizeBean size = new SizeBean();
		 size = session.selectOne("Productns.getSize" , size_id);
		 return size;
	 }
}
