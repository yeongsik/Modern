package shop.service;

import java.util.List;

import shop.model.PersonalQuestionBean;

public interface PersonalQuestionService {

	public int getListCount() throws Exception;

	public List<PersonalQuestionBean> getBoardList(int page) throws Exception;

	
}
