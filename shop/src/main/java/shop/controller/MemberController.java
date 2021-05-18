package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	// 로그인 페이지
	@RequestMapping ("login.shop")
	public String login() {
		
		return "";
	}
}
