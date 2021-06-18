package shop.service;

import java.util.List;

import shop.model.ReviewBean;

public interface ReviewService {

	public int getListCount() throws Exception;

	public List<ReviewBean> getBoardList(int page) throws Exception;

	public List<ReviewBean> getProductName(int product_id) throws Exception;

	public List<ReviewBean> reviewContent(int page) throws Exception;
}
