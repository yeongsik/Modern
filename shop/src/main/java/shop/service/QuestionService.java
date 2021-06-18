package shop.service;

import java.util.List;

import shop.model.QuestionBean;

public interface QuestionService {

	public int getListCount() throws Exception;

	public List<QuestionBean> getBoardList(int page) throws Exception;

//	public QuestionBean getQuestionDetail(int question_id) throws Exception;

	
}
