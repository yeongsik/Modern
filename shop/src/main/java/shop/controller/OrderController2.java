package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController2 {
	
	
	@RequestMapping ("order-result.shop")
	public String main() {
		return "order/order-result";
	}
	
}
