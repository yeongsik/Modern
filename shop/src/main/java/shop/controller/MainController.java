package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	
	@RequestMapping ("main.shop")
	public String main() {
		return "main/main";
	}
}
