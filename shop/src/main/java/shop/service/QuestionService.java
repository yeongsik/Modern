package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.QuestionDAO;

@Service
public class QuestionService {
	@Autowired
	private QuestionDAO qd;
}
