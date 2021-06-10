package shop.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.model.OrderDetailBean;
import shop.model.ProductBean;
import shop.service.OrderService;
import shop.service.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService os;
	@Autowired
	private ProductService ps;
	
	@RequestMapping ("order.shop")
	public String main() {
		return "order/order";
	}
	
	// 오더 디테일 추가 
	@RequestMapping ("orderdetailadd.shop")
	public String orderDetailAdd (int product_id , String choose_size , Model model) throws Exception {
		System.out.println("OrderDetailAdd.shop");
		Random random = new Random();
		int orderDetail_pk = product_id + random.nextInt(10000);
		OrderDetailBean order = new OrderDetailBean();
		ProductBean product = new ProductBean();
		order.setOrder_detail_pk(orderDetail_pk);
		order.setProduct_id(product_id);
		order.setCoupon_id(0);
		order.setPurchase_number(1);
		order.setOrder_id("");
		order.setChoose_size(choose_size);
		System.out.println(product_id);
		System.out.println(choose_size);
		os.orderDetailAdd(order);
		
		order = os.getOrderDetail(orderDetail_pk);
		product = ps.getProductOne(product_id);
		
		System.out.println(order);
		System.out.println(product);
		model.addAttribute("orderDetail", order);
		model.addAttribute("orderProduct" , product);
		
		
		return "order/orderDetailAddResult";
	}
}
