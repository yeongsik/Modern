package shop.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.model.QuestionBean;

@Repository
public class QuestionDAOImple implements QuestionDAO {
	@Autowired
	private SqlSessionTemplate session;
	
	public int getListCount() throws Exception {
		int count = 0;

		count = ((Integer) session.selectOne("Question.question_list_count")).intValue();

		return count;
	};

	
	public List<QuestionBean> getBoardList(int page) throws Exception {
	List<QuestionBean> list = session.selectList("Question.question_list", page);
  
	return list; };
	 
	
	public QuestionBean getQuestionDetail(int question_id) throws Exception {
		return (QuestionBean) session.selectOne("Question.questionDetail", question_id);
	}


}
