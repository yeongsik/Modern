package shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.QuestionDAO;
import shop.model.QuestionBean;

@Service
public class QuestionServiceImple implements QuestionService {
	
	@Autowired
	private QuestionDAO questionDao;

	@Override
	public int getListCount() throws Exception {
		return questionDao.getListCount();
	}

	@Override
	public List<QuestionBean> getBoardList(int page) throws Exception {
		return questionDao.getBoardList(page);
	}

	@Override
	public QuestionBean getQuestionDetail(int question_id) throws Exception {
		QuestionBean board = questionDao.getQuestionDetail(question_id);
		return board;
	}

}
