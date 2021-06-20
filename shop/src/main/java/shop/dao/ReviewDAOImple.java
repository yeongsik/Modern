package shop.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.model.ReviewBean;

@Repository
public class ReviewDAOImple implements ReviewDAO {
	@Autowired
	private SqlSessionTemplate session;
	
	public int getListCount() throws Exception {
		int count = 0;
		
		count = ((Integer) session.selectOne("PersonalQuestion.question_list_count")).intValue();

		return count;
	};
	
	public List<ReviewBean> getBoardList(int page) throws Exception {
		List<ReviewBean> list = session.selectList("Review.review_list", page);
  
		return list;
	};
	
	public List<ReviewBean> getProductName(int product_id) throws Exception {
		List<ReviewBean> list = session.selectList("Review.product_name", product_id);
		
		return list;
	}

	@Override
	public List<ReviewBean> getReviewContent(int page) throws Exception {
		
		List<ReviewBean> list = session.selectList("Review.review_content", page);
				
		return list;
	}


}
