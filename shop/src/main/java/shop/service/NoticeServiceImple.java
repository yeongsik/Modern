package shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.NoticeDAO;
import shop.model.NoticeBean;

@Service
public class NoticeServiceImple implements NoticeService {

	@Autowired
	private NoticeDAO noticeDao;

	@Override
	public int getListCount() throws Exception {
		return noticeDao.getListCount();
	}

	@Override
	public List getBoardList(int page) throws Exception {
		return noticeDao.getBoardList(page);
	}

	// 푸터 공지사항 출력
	@Override
	public List getFooterBoardList() throws Exception {
		return noticeDao.getFooterBoardList();
	}
	
	@Override
	public void updateView(int notice_id) throws Exception {
		noticeDao.updateView(notice_id);
	}

	@Override
	public NoticeBean noticeDetail(int notice_id) throws Exception {
		NoticeBean board = noticeDao.getNoticeDetail(notice_id);
		return board;
	}


}
