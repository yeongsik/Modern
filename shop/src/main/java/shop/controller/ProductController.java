package shop.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shop.model.ProductBean;
import shop.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService ProductService;
	
	@RequestMapping ("productlist.shop")
	public String productlist(@ModelAttribute ProductBean input ,HttpServletRequest request , Model model) throws Exception{
		System.out.println("productlist.shop");
		System.out.println(input.getCategory_id());
		
		List<ProductBean> productlist = new ArrayList<ProductBean>();
		int page = 1;
		int limit = 9; // 한 화면에 출력할 상품 수 
		if ( request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		input.setPage(page);
		int listcount = ProductService.getProductCount(input);
		int maxpage = (int) ((double) listcount / limit + 0.95);
		int startpage = (((int) ((double) page / 10 + 0.9)) -1) * 10 +1;
		
		int endpage = maxpage;
		
		if (endpage > startpage + 10 -1)
			endpage = startpage + 10 -1 ;
		
		productlist = ProductService.getProductList(input);
		System.out.println("productlist:"+productlist);
		model.addAttribute("productlist",productlist);
		model.addAttribute("page" , page);
		model.addAttribute("startpage" , startpage);
		model.addAttribute("endpage" , endpage);
		model.addAttribute("maxpage" , maxpage);
		model.addAttribute("listcount" , listcount);
		model.addAttribute("product_nav", input);
		System.out.println(productlist);
		System.out.println(listcount);
		
		return "product/productlist";
	}
	
	@RequestMapping("product_detail.shop") 
	public String product_detail(@RequestParam int product_id , Model model) throws Exception {
		System.out.println("product_detail");
		
		ProductBean product = new ProductBean();
		product = ProductService.getProductOne(product_id);
		
		// 적립금 구하기
		int buyingPoint = (int) (product.getProduct_price() *0.01);
		
		// 사이즈 구하기 
		
		model.addAttribute("product", product);
		model.addAttribute("buyingPoint", buyingPoint);
		System.out.println(product_id);
		return "product/product_detail";
	}
}
