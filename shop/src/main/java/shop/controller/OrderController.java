package shop.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shop.model.MemberBean;
import shop.model.OrderBean;
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

	
	@RequestMapping("order.shop")
	public String order(@RequestParam String product_id, Model model) throws Exception {
		
		OrderBean order = new OrderBean();
		order = os.getOrderOne(product_id);
		
		model.addAttribute("order", order);
		
		return "order/order";
	}
	

	// 오더 디테일 추가 
	@RequestMapping ("orderdetailadd.shop")
	public String orderDetailAdd (int product_id , String choose_size , Model model, HttpSession session) throws Exception {
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
		order.setDetail_state(0);
		System.out.println(product_id);
		System.out.println(choose_size);
		os.orderDetailAdd(order);
		
		order = os.getOrderDetail(orderDetail_pk);
		product = ps.getProductOne(product_id);
		
		System.out.println(order);
		System.out.println(product);
		model.addAttribute("orderDetail", order);
		model.addAttribute("orderProduct" , product);
		session.setAttribute("orderDetail11", order);
		
		return "order/orderDetailAddResult";
	}
	
	@RequestMapping ("removeOrderDetail.shop")
	public void removeOrderDetail(int order_detail_pk) throws Exception{
		System.out.println(order_detail_pk);
		os.removeOrderDetail(order_detail_pk);
	}
	
	@RequestMapping ("updatePurchaseNumber.shop")
	public String updatePurchaseNumber(int purchase_number , int order_detail_pk ,Model model) throws Exception {
		System.out.println(purchase_number);
		System.out.println(order_detail_pk);
		OrderDetailBean orderDetail = new OrderDetailBean();
		orderDetail.setOrder_detail_pk(order_detail_pk);
		orderDetail.setPurchase_number(purchase_number);
		
		orderDetail.getOrder_detail_pk();
		orderDetail.getPurchase_number();
		os.updateOrderDetail(orderDetail);
		
		orderDetail = os.getOrderDetail(order_detail_pk);
		model.addAttribute("orderDetail", orderDetail);
		
		return "order/updatePurchaseNumberResult";
	}
	
	@RequestMapping("orderAdd.shop")
	public String orderAdd(Model model , int[] order_detail_pk ,HttpSession session) throws Exception {
		System.out.println("orderAdd");
		Random rnd = new Random();
		MemberBean member = (MemberBean)session.getAttribute("m");
		OrderBean addOrder = new OrderBean();
		ProductBean product = new ProductBean();
		String newOrder_id = "";
								
		for(int t=0 ; t<10; t++) {
			newOrder_id += String.valueOf((char)((int)(rnd.nextInt(26)) + 65));
		}
		
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		Date time = new Date();
		newOrder_id += format.format(time);
		newOrder_id += String.valueOf(rnd.nextInt(1000));
		
		System.out.println(newOrder_id);
		addOrder.setOrder_id(newOrder_id);
		addOrder.setMember_id(member.getMember_id());
		addOrder.setReceiver_name(member.getName());
		addOrder.setReceiver_tel(1);
		addOrder.setReceiver_post(0);
		addOrder.setReceiver_addr1("");
		addOrder.setReceiver_addr_detail("");
		addOrder.setOrder_date(time);
		addOrder.setUsed_point(0);
		addOrder.setTotal_price(10000);
		addOrder.setOrder_state(0);
		addOrder.setDelivery_price(2500);
		addOrder.setInvoice_num(0);
		os.insertOrder(addOrder);
		
		
		List<ProductBean> productList = new ArrayList<ProductBean>();
		OrderDetailBean orderDetail = new OrderDetailBean();
		System.out.println(order_detail_pk);
		for (int i=0; i<order_detail_pk.length; i++) {
			orderDetail = os.getOrderDetail(order_detail_pk[i]);
			product = ps.getProductOne(orderDetail.getProduct_id());
			productList.add(product);
			orderDetail.setOrder_id(newOrder_id);
			os.updateOrderDetail(orderDetail);
		}
		
		model.addAttribute("order" , addOrder);
		model.addAttribute("productList", productList);
		model.addAttribute("orderDetail", orderDetail);
		System.out.println(member.getMember_id());
		
		return "order/order";
	}

	@RequestMapping ("order-result.shop")
	public String orderResult() {
		
		return "order/order-result";
	}
	

}
