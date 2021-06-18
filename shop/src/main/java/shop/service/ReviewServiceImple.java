package shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.ReviewDAO;
import shop.model.NoticeBean;
import shop.model.ReviewBean;

@Service
public class ReviewServiceImple implements ReviewService {
	
	@Autowired
	private ReviewDAO rd;

	@Override
	public int getListCount() throws Exception {
		return rd.getListCount();
	}

	@Override
	public List<ReviewBean> getBoardList(int page) throws Exception {
		return rd.getBoardList(page);
	}

	@Override
	public List<ReviewBean> getProductName(int product_id) throws Exception {
		return rd.getProductName(product_id);
	}

	@Override
	public List<ReviewBean> reviewContent(int page) throws Exception {
		return rd.getReviewContent(page);
	}
}
