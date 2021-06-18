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
	private QuestionService qs;
	@Autowired
	private ProductService ps;

	// 상품문의 메인
	@RequestMapping("member_item_question.shop")
	public String question(HttpServletRequest request, Model model) throws Exception {
		
		List<QuestionBean> qList = new ArrayList<QuestionBean>();
		List<ProductBean> pList = new ArrayList<ProductBean>();
		ProductBean product = new ProductBean();

		int page = 1;
		int limitPage = 10;
		int listCount = qs.getListCount();

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		if (request.getParameter("page") == null || request.getParameter("page").equals("")) {
			page = 1;
		}

		qList = qs.getBoardList(page);

		for(int i=0; i<qList.size(); i++) {
			product = ps.getProductOne((qList.get(i)).getProduct_id());
			pList.add(product);
		}
		
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
		model.addAttribute("pList", pList);
		model.addAttribute("product", product);
		/* 내용 줄바꿈 */
		model.addAttribute("br", "<br/>");
		model.addAttribute("cn", "\n");
		

		return "member/member_item_question";
	}

	

	 
}
