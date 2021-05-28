package shop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shop.model.ProductBean;
import shop.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService ProductService;
	
	@RequestMapping ("productlist.shop")
	public String productlist(@RequestParam String category  , Model model) throws Exception{
		
		List<ProductBean> productlist = new ArrayList<ProductBean>();
		int page = 1;
		int limit = 9; // 한 화면에 출력할 상품 수 
		int listcount = ProductService.getProductCount(category);
		
		int maxpage = (int) ((double) listcount / limit + 0.95);
		int startpage = (((int) ((double) page / 10 + 0.9)) -1) * 10 +1;
		
		int endpage = maxpage;
		
		if (endpage > startpage + 10 -1)
			endpage = startpage + 10 -1 ;
		
		if(category =="top_tshirts") {
			productlist = ProductService.getProductList_Top_tshirts(page);
		} else if (category =="top_shirts") {
			productlist = ProductService.getProductList_Top_shirts(page);
		} else if (category =="top_knit") {
			productlist = ProductService.getProductList_Top_knit(page);
		}
		
		if(category =="bottom_jean") {
			productlist = ProductService.getProductList_Bottom_jean(page);
		} else if (category == "bottom_pants") {
			productlist = ProductService.getProductList_Bottom_pants(page);
		} else if (category == "bottom_shorts") {
			productlist = ProductService.getProductList_Bottom_shorts(page);
		}
		
		if(category =="outer_jacket") {
			productlist = ProductService.getProductList_Outer_jacket(page);
		} else if (category =="outer_coat") {
			productlist = ProductService.getProductList_Outer_coat(page);
		}
		
		if(category =="acc_shoes") {
			productlist = ProductService.getProductList_Acc_shoes(page);
		} else if (category == "acc_socks") {
			productlist = ProductService.getProductList_Acc_socks(page);
		} else if (category == "acc_jewelry") {
			productlist = ProductService.getProductList_Acc_jewelry(page);
		}
		
		
		model.addAttribute("productlist",productlist);
		model.addAttribute("page" , page);
		model.addAttribute("startpage" , startpage);
		model.addAttribute("endpage" , endpage);
		model.addAttribute("maxpage" , maxpage);
		model.addAttribute("listcount" , listcount);
		
		return "productlist.jsp";
	}
}
