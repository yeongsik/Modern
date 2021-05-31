package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
	
	
	@RequestMapping ("order.shop")
	public String main() {
		return "order/order";
	}
	
}
