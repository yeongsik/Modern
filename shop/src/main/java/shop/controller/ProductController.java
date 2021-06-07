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
import shop.model.QuestionBean;
import shop.model.ReviewBean;
import shop.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService ProductService;
	
	@RequestMapping ("productlist.shop")
	public String productlist(@ModelAttribute ProductBean product ,HttpServletRequest request , Model model) throws Exception{
		System.out.println("productlist.shop");
		System.out.println(product.getCategory_id());
		
		// 상품 목록 리스트 
		List<ProductBean> productlist = new ArrayList<ProductBean>();
		int page = 1;
		product.setPage(page);
		productlist = ProductService.getProductList(product);
		
		model.addAttribute("productlist",productlist);
		model.addAttribute("currentPage" , page);
		model.addAttribute("product_nav", product);
		
		return "product/productlist";
	}
	@RequestMapping ("productlistadd.shop")
	public String productlistadd(String category_id , int currentPage ,ProductBean product , Model model) throws Exception {
		product.setCategory_id(category_id);
		product.setPage(currentPage);
		
		List<ProductBean> productlist = new ArrayList<ProductBean>();
		productlist = ProductService.getProductList(product);
		
		model.addAttribute("productlist",productlist);
		model.addAttribute("page" , product.getPage());
		
		return "product/productlistadd";
	}
	@RequestMapping("product_detail.shop") 
	public String product_detail(@RequestParam int product_id , Model model) throws Exception {
		System.out.println("product_detail");
		
		ProductBean product = new ProductBean();
		product = ProductService.getProductOne(product_id);
		
		
		// 조회수 증가 
		ProductService.upViewCount(product_id);
		// 적립금 구하기
		int buyingPoint = (int) (product.getProduct_price() *0.01);
		
		// 사이즈 구하기 
		
		// 리뷰 게시판 목록 리스트 
		List<ReviewBean> review = new ArrayList<ReviewBean>();
		
		
		
		// Q&A 게시판 목록 리스트 
		List<QuestionBean> question = new ArrayList<QuestionBean>();
		
		model.addAttribute("product", product);
		model.addAttribute("buyingPoint", buyingPoint);
		System.out.println(product_id);
		
		return "product/product_detail";
	}
}
