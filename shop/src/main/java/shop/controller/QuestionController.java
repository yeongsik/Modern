package shop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.model.ProductBean;
import shop.model.QuestionBean;
import shop.service.ProductService;
import shop.service.QuestionService;

@Controller
public class QuestionController {

	@Autowired
	private QuestionService questionService;
	@Autowired
	private ProductService ps;

	// 상품문의 메인
	@RequestMapping("member_item_question.shop")
	public String question(HttpServletRequest request, Model model) throws Exception {
		
		List<QuestionBean> qList = new ArrayList<QuestionBean>();
		
		

		int page = 1;
		int limitPage = 10;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		if (request.getParameter("page") == null || request.getParameter("page").equals("")) {
			page = 1;
		}

		int listCount = questionService.getListCount();
		
		/*
		 * List<ProductBean> pList = new ArrayList<ProductBean>(); qList =
		 * questionService.getBoardList(page); ProductBean product = new ProductBean();
		 * for(int i = 0 ; i<qList.size(); i++) { product =
		 * ps.getProductOne(qList[i].getProduct_id); pList.add(product); }
		 * model.addAttribute("pList", pList);
		 */
		
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
		model.addAttribute("qList", qList);

		return "member/member_item_question";
	}

	// 세부내용

	/*
	 * 게시글 상세정보 NoticeBean board = noticeService.noticeDetail(notice_id);
	 * 
	 * 게시글 내용에 띄어쓰기 추가 String noticeContent =
	 * board.getNotice_content().replace("\n", "<br>");
	 * 
	 * model.addAttribute("board", board); model.addAttribute("page", page);
	 * model.addAttribute("noticeContent", noticeContent);
	 * 
	 * return "notice/detail"; }
	 */
}
