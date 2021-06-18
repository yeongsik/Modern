package shop.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.model.PersonalQuestionBean;

@Repository
public class PersonalQuestionDAOImple implements PersonalQuestionDAO {
	@Autowired
	private SqlSessionTemplate session;
	
	public int getListCount() throws Exception {
		int count = 0;

		count = ((Integer) session.selectOne("PersonalQuestion.question_list_count")).intValue();

		return count;
	};

	public List<PersonalQuestionBean> getBoardList(int page) throws Exception {
	List<PersonalQuestionBean> list = session.selectList("PersonalQuestion.question_list", page);
  
	return list;
	};



}
