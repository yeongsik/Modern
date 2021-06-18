package shop.dao;

import java.util.List;

import shop.model.PersonalQuestionBean;

public interface PersonalQuestionDAO {

	public int getListCount() throws Exception;

	public List<PersonalQuestionBean> getBoardList(int page) throws Exception; 

}
