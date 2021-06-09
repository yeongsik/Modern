package shop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.model.NoticeBean;
import shop.service.NoticeService;

@Controller
public class MainController {
	
	// 메인화면
	@Autowired 
	private NoticeService noticeService;
	
	@RequestMapping ("main.shop")
	public String main(HttpServletRequest request, HttpSession session) throws Exception {
		List<NoticeBean> footerList = new ArrayList<NoticeBean>();
		
		footerList = noticeService.getFooterBoardList();
		
		session.setAttribute("footerList", footerList);
		
		return "main/main";
	}
	
	// About 화면
	@RequestMapping ("about.shop")
	public String about() {
		return "";
	}
	
}
