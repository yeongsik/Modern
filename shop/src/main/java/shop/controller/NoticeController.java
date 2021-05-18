package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	
	// 공지사항 메인
	@RequestMapping("notice.shop")
	public String notice() {
		
		return "";
	}
}
