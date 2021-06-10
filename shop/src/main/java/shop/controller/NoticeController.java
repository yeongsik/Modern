package shop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shop.model.NoticeBean;
import shop.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;

	// 공지사항 메인
	@RequestMapping("notice.shop")
	public String notice(HttpServletRequest request, Model model) throws Exception {
		List<NoticeBean> list = new ArrayList<NoticeBean>();

		int page = 1;
		int limitPage = 10;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		if (request.getParameter("page") == null || request.getParameter("page").equals("")) {
			page = 1;
		}

		int listCount = noticeService.getListCount();

		list = noticeService.getBoardList(page);

		int maxPage = (int) ((double) listCount / limitPage + 0.95);

		int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;

		int endPage = maxPage;

		if (endPage > startPage + 10 - 1)
			endPage = startPage + 10 - 1;

		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("listCount", listCount);
		model.addAttribute("list", list);

		return "notice/list";
	}

	// 세부내용
	@RequestMapping("notice_detail.shop")
	public String detail(@RequestParam("page") String page, @RequestParam("notice_id") int notice_id, Model model)
			throws Exception {

		if ((page) == null || (page).equals("")) {
			page = "1";
		}
		/* 조회수 증가 */
		noticeService.updateView(notice_id);

		/* 게시글 상세정보 */
		NoticeBean board = noticeService.noticeDetail(notice_id);

		/* 게시글 내용에 띄어쓰기 추가 */
		String noticeContent = board.getNotice_content().replace("\n", "<br>");

		model.addAttribute("board", board);
		model.addAttribute("page", page);
		model.addAttribute("noticeContent", noticeContent);

		return "notice/detail";
	}

}
