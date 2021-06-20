package shop.dao;

import java.util.List;

import shop.model.ReviewBean;

public interface ReviewDAO {
	
	public int getListCount() throws Exception;

	public List<ReviewBean> getBoardList(int page) throws Exception; 
	
	public List<ReviewBean> getProductName(int product_id) throws Exception;

	public List<ReviewBean> getReviewContent(int page) throws Exception;
	
}
