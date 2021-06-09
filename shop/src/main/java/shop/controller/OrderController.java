package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shop.model.OrderBean;
import shop.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService OrderService;
	
	@RequestMapping("order.shop")
	public String order(@RequestParam String product_id, Model model) throws Exception {
		
		OrderBean order = new OrderBean();
		order = OrderService.getOrderOne(product_id);
		
		model.addAttribute("order", order);
		
		return "order/order";
	}
	
	@RequestMapping ("order-result.shop")
	public String orderResult() {
		
		return "order/order-result";
	}
	
}
