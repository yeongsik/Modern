package shop.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shop.model.HeartBean;
import shop.model.MemberBean;
import shop.model.ProductBean;
import shop.model.QuestionBean;
import shop.model.ReviewBean;
import shop.model.SizeBean;
import shop.service.MemberService;
import shop.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService ProductService;
	
	@Autowired
  private MemberService MemberService;
	
	@RequestMapping ("productlist.shop")
	public String productlist(@ModelAttribute ProductBean product ,HttpSession session, HttpServletRequest request , Model model) throws Exception{
		System.out.println("productlist.shop");
		System.out.println(product.getCategory_id());
		
		// 상품 목록 리스트 
		List<ProductBean> productlist = new ArrayList<ProductBean>();
		int page = 1;
		product.setPage(page);
		productlist = ProductService.getProductList(product);
		
		// 관심상품 등록 여부 확인
		MemberBean mb = (MemberBean)session.getAttribute("m");
		
		if(mb != null) {
		  String id = mb.getMember_id();
		  
		  
		  List<HeartBean> wishState = MemberService.getWishList(id);
		  
		  model.addAttribute("wish", wishState);
		  
      
      if(wishState.isEmpty()) { int state = 1; System.out.println("널");
      
      model.addAttribute("state", state);
     
      }
		}
		
		
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
	// 상품 세부 
	@RequestMapping("product_detail.shop") 
	public String product_detail(@RequestParam int product_id , HttpSession session, Model model) throws Exception {
		System.out.println("product_detail");
		
		ProductBean product = new ProductBean();
		product = ProductService.getProductOne(product_id);
		SizeBean size = new SizeBean();
		
		System.out.println(product.getSize_id());
		
		// 조회수 증가
		ProductService.upViewCount(product_id);
		
		// 제품 사이즈 구하기 
		size = ProductService.getSize(product.getSize_id());
		String size_name = size.getSize_name();
		String[] size_model =  size_name.split(",");
		for (int i=0; i<size_model.length; i++) {
			String upper = size_model[i].toUpperCase();
			size_model[i] = upper;
		}
 		
		// 적립금 구하기
		int buyingPoint = (int) (product.getProduct_price() *0.01);
		
		// 리뷰 게시판 목록 리스트 
		List<ReviewBean> review = new ArrayList<ReviewBean>();
		
		// Q&A 게시판 목록 리스트 
		List<QuestionBean> question = new ArrayList<QuestionBean>();
		
		
		// 관심상품 등록 여부 확인 
		if(session.getAttribute("m")!=null) {
			MemberBean mb = (MemberBean) session.getAttribute("m");
			HeartBean hb = new HeartBean();
			hb.setMember_id(mb.getMember_id()); 
			hb.setProduct_id(product_id);
			int likeyState = MemberService.likeyState(hb);
			System.out.println("likeyState : " + likeyState);
			model.addAttribute("likeyState",likeyState);
		}
	    
			model.addAttribute("size", size_model);
			model.addAttribute("product", product);
			model.addAttribute("buyingPoint", buyingPoint);
			System.out.println(product_id);
			
		return "product/product_detail";
	}
}
