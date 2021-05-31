package shop.dao;

import java.util.List;

import shop.model.NoticeBean;

public interface NoticeDAO {
  
  public int getListCount() throws Exception;
    
  public List<NoticeBean> getBoardList(int page) throws Exception;
  
  public void updateView(int notice_id) throws Exception;
  
  public NoticeBean getNoticeDetail(int notice_id) throws Exception;
}
