package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	// 메인화면
	@RequestMapping ("main.shop")
	public String main() {
		return "main/main";
	}
	
	// About 화면
	@RequestMapping ("about.shop")
	public String about() {
		return "";
	}
}
