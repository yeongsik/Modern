package shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.PersonalQuestionDAO;
import shop.model.PersonalQuestionBean;

@Service
public class PersonalQuestionServiceImple implements PersonalQuestionService {
	
	@Autowired
	private PersonalQuestionDAO pqd;

	@Override
	public int getListCount() throws Exception {
		return pqd.getListCount();
	}

	@Override
	public List<PersonalQuestionBean> getBoardList(int page) throws Exception {
		return pqd.getBoardList(page);
	}


}
