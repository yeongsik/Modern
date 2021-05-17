package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.NoticeDAO;

@Service
public class NoticeService {
	@Autowired
	private NoticeDAO nd;
}
