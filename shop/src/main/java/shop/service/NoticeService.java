package shop.service;

import java.util.List;

import shop.model.NoticeBean;

public interface NoticeService {

	public int getListCount() throws Exception;

	public List getBoardList(int page) throws Exception;

	public List getFooterBoardList() throws Exception;

	public void updateView(int notice_id) throws Exception;

	public NoticeBean noticeDetail(int notice_id) throws Exception;

}
