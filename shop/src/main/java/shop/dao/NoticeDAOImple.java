package shop.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.model.NoticeBean;

@Repository
public class NoticeDAOImple implements NoticeDAO {
	@Autowired
	private SqlSessionTemplate session;

	public int getListCount() throws Exception {
		int count = 0;

		count = ((Integer) session.selectOne("Notice.board_list_count")).intValue();

		return count;
	};

	public List<NoticeBean> getBoardList(int page) throws Exception {
		List<NoticeBean> list = session.selectList("Notice.board_list", page);

		return list;
	};

	public List<NoticeBean> getFooterBoardList() throws Exception {
		List<NoticeBean> list = session.selectList("Notice.footer_board_list");
		
		return list;
	};
	
	public void updateView(int notice_id) throws Exception {
		session.update("Notice.updateView", notice_id);
	}

	public NoticeBean getNoticeDetail(int notice_id) throws Exception {
		return (NoticeBean) session.selectOne("Notice.noticeDetail", notice_id);
	}


}
