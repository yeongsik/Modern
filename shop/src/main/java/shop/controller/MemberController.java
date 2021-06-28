package shop.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.model.AddressBean;
import shop.model.CartBean;
import shop.model.CouponBean;
import shop.model.HeartBean;
import shop.model.MemberBean;
import shop.model.OrderDetailBean;
import shop.model.PersonalQuestionBean;
import shop.model.PointBean;
import shop.model.ProductBean;
import shop.model.ProductDetailBean;
import shop.model.QuestionBean;
import shop.model.ReviewBean;
import shop.service.MemberService;
import shop.service.OrderService;
import shop.service.ProductService;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;

	@Autowired
	private OrderService os;

	@Autowired
	private ProductService ps; 

	// 마이페이지 메인화면

	@RequestMapping("member_main.shop")
	public String main(HttpSession session) throws Exception {
		System.out.println("마이페이지 진입");
		//쿠폰개수
		MemberBean m = (MemberBean)session.getAttribute("m");
		CouponBean cp = new CouponBean();				
		cp.setMember_id(m.getMember_id());
		int countCoupon = service.countCoupon(cp);
		System.out.println("countCoupon:" + countCoupon);
		session.setAttribute("countCoupon", countCoupon);
		return "member/member_main";
	}

	// 주문 배송 조회
	@RequestMapping("member_order.shop")
	public String order() {
		return "member/member_order_delivery";
	}

	// 취소 교환 조회
	@RequestMapping("member_cancel.shop")
	public String cancel() {
		return "member/member_cancel_exchange";
	}

	// 회원정보 수정

	@RequestMapping("member_profile.shop")
	public String memberInfo() {
		return "member/member_update";
	}

	// 회원정보 삭제

	@RequestMapping("member_withdraw_view.shop")
	public String memberdelete() {
		return "member/member_withdraw";
	}

	// 회원 등급
	@RequestMapping("member_membership.shop")
	public String membership() {
		return "member/member_membership";
	}

	// 상품 문의
	@RequestMapping("member_item_question.shop")
	public String question(HttpSession session, HttpServletRequest request, Model model) throws Exception {

		List<QuestionBean> qList = new ArrayList<QuestionBean>();
		List<ProductBean> pList = new ArrayList<ProductBean>();
		MemberBean member = (MemberBean)session.getAttribute("m");
		QuestionBean question = new QuestionBean();
		ProductBean product = new ProductBean();

		String member_id = member.getMember_id();

		question.setMember_id(member_id);

		int page = 1;
		int limitPage = 5;
		int listCount = service.getItemQuestionListCount(member_id);

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		if (request.getParameter("page") == null || request.getParameter("page").equals("")) {
			page = 1;
		}
		
		question.setPage(page);
		
		qList = service.getItemQuestionBoardList(question);

		for(int i=0; i<qList.size(); i++) {
			product = ps.getProductOne((qList.get(i)).getProduct_id());
			pList.add(product);
		}
    
		int maxPage = (int) ((double) listCount / limitPage + 1);

		int startPage = (((int) ((double) page / 5 + 0.9)) - 1) * 5 + 1;

		int endPage = maxPage;

		if (endPage > startPage + 5 - 1)
			endPage = startPage + 5 - 1;

		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("listCount", listCount);
		model.addAttribute("qList", qList);
		model.addAttribute("pList", pList);
		model.addAttribute("product", product);
		/* 내용 줄바꿈 */
		model.addAttribute("br", "<br/>");
		model.addAttribute("cn", "\n");

		return "member/member_item_question";
	}

	// 구매후기
	@RequestMapping("member_board.shop")

	public String review(HttpServletRequest request,HttpSession session, Model model) throws Exception {
		List<ReviewBean> rList = new ArrayList<ReviewBean>();
		List<ProductBean> pList = new ArrayList<ProductBean>();
		MemberBean member = (MemberBean)session.getAttribute("m");
		ReviewBean review = new ReviewBean();
		ProductBean product = new ProductBean();

		String member_id = member.getMember_id();

		review.setMember_id(member_id);
		
		int page = 1;
		int limitPage = 5;
		int listCount = service.getReviewListCount(member_id);
	

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		if (request.getParameter("page") == null || request.getParameter("page").equals("")) {
			page = 1;
		}
		
		review.setPage(page);
	
		rList = service.getReviewBoardList(review);
		
		for(int i=0; i<rList.size(); i++) {
			product = ps.getProductOne((rList.get(i)).getProduct_id());
			pList.add(product);
		}
		
		int maxPage = (int) ((double) listCount / limitPage + 1);
	
		int startPage = (((int) ((double) page / 5 + 0.9)) - 1) * 5 + 1;
	
		int endPage = maxPage;
	
		if (endPage > startPage + 5 - 1)
			endPage = startPage + 5 - 1;
	
		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("listCount", listCount);
		model.addAttribute("rList", rList);
		model.addAttribute("pList", pList);
		model.addAttribute("product", product);

		/* 내용 줄바꿈 */
		model.addAttribute("br", "<br/>");
		model.addAttribute("cn", "\n");

		return "member/member_item_review";
	}

	// 1:1 문의

	// 상품문의 메인
	@RequestMapping("member_personal_question.shop")

	public String personalQuestion(HttpSession session, HttpServletRequest request, Model model) throws Exception {
		List<PersonalQuestionBean> pqList = new ArrayList<PersonalQuestionBean>();
		PersonalQuestionBean pqb = new PersonalQuestionBean();
		MemberBean member = (MemberBean)session.getAttribute("m");

		String member_id = member.getMember_id();

		pqb.setMember_id(member_id);

		int page = 1;
		int limitPage = 5;
		int listCount = service.getPersonalQuestionListCount(member_id);


		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		if (request.getParameter("page") == null || request.getParameter("page").equals("")) {
			page = 1;
		}

		pqb.setPage(page);
		
		pqList = service.getPersonalQuestionBoardList(pqb);
		
		int maxPage = (int) ((double) listCount / limitPage + 1);

		int startPage = (((int) ((double) page / 5 + 0.9)) - 1) * 5 + 1;

		int endPage = maxPage;

		if (endPage > startPage + 5 - 1)
			endPage = startPage + 5 - 1;

		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("listCount", listCount);
		model.addAttribute("pqList", pqList);
		/* 내용 줄바꿈 */
		model.addAttribute("br", "<br/>");
		model.addAttribute("cn", "\n");

		return "member/member_personal_question";
	}

	// 쿠폰페이지
	@RequestMapping("member_coupon.shop")
	public String coupon(HttpSession session, HttpServletRequest request, Model model) throws Exception {
		System.out.println("member_coupon 진입");
		
		List<CouponBean> cpList = new ArrayList<CouponBean>();
		MemberBean member = (MemberBean) session.getAttribute("m");
		CouponBean cp = new CouponBean();
		cp.setMember_id(member.getMember_id());
		System.out.println("member_id:" + cp.getMember_id());

		// 쿠폰 리스트 출력
		int page = 1;
		int limitPage = 5;
		int listCount = service.countCoupon(cp);

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		if (request.getParameter("page") == null || request.getParameter("page").equals("")) {
			page = 1;
		}
		cp.setPage(page);
		cpList = service.getcouponList(cp);
		
		System.out.println("service 후 session 전 cpList:" + cpList);


		int maxPage = (int) ((double) listCount / limitPage + 1);
		int startPage = (((int) ((double) page / 5 + 0.9)) - 1) * 5 + 1;
		int endPage = maxPage;
		if (endPage > startPage + 5 - 1) endPage = startPage + 5 - 1;
		
		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("listCount", listCount);
		model.addAttribute("cpList", cpList);
		System.out.println("listCount: "+listCount);
		return "member/member_coupon";
	}

  // 포인트
  @RequestMapping("member_point.shop")
  public String point(HttpSession session, HttpServletRequest request, Model model) throws Exception {
    System.out.println("point 로딩 성공");

    MemberBean mb = (MemberBean)session.getAttribute("m");
    String member_id = mb.getMember_id();
    
    List<PointBean> list = new ArrayList<PointBean>();
    
    int page = 1;
    int limitPage = 5;
    
    if (request.getParameter("page") != null) {
      page = Integer.parseInt(request.getParameter("page"));
    }

    if (request.getParameter("page") == null || request.getParameter("page").equals("")) {
      page = 1;
    }

    int listCount = service.getPointListCount(member_id);

    PointBean pb = new PointBean();
    pb.setMember_id(member_id);
    pb.setPage(page);
    
    list = service.getPointList(pb);

    int maxPage = (int) ((double) listCount / limitPage + 0.95);

    int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;

    int endPage = maxPage;

    if (endPage > startPage + 10 - 1) endPage = startPage + 10 - 1;
    
    model.addAttribute("page", page);
    model.addAttribute("count", listCount);
    model.addAttribute("list", list);
    model.addAttribute("startPage", startPage);
    model.addAttribute("endPage", endPage);
    model.addAttribute("maxPage", maxPage);
    
    return "member/member_point";
  }

	// 쿠폰 관리 페이지
	@RequestMapping("/member_coupon_management.shop")
	public String member_coupon_management() {
		return "member/member_coupon_management";
	}

	// 쿠폰 발급

	@RequestMapping(value = "/member_coupon_create.shop", method = RequestMethod.POST)
	public String member_coupon_create(@ModelAttribute CouponBean coupon, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// CouponBean coupon = new CouponBean();
		System.out.println("쿠폰 생성 컨트롤러");

		String purpose1 = request.getParameter("purpose");
		int purpose = Integer.parseInt(purpose1);
		System.out.println("purpose2: " + purpose1);

		Random random = new Random();
		int coupon_code = purpose + random.nextInt(10000);
		System.out.println("coupon_code: " + coupon_code);

		Date coupon_expiration = null;
		Date date = new Date();

		String coupon_expiration_value1 = request.getParameter("coupon_expiration_val");
		int coupon_expiration_value = Integer.parseInt(coupon_expiration_value1);
		System.out.println("coupon_expiration_value: " + coupon_expiration_value);

		Calendar cal = Calendar.getInstance();
		Calendar cal2 = Calendar.getInstance();
		cal.setTime(date);
		cal2.setTime(date);
		cal2.add(Calendar.DATE, coupon_expiration_value);
		coupon_expiration = cal2.getTime();
		System.out.println("coupon_expiration: " + coupon_expiration);
		coupon.setCoupon_id(coupon_code);
		coupon.setCoupon_date(cal.getTime());
		coupon.setCoupon_expiration(coupon_expiration);

		service.createCoupon(coupon);

		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('쿠폰 발급 완료');</script>");
		out.flush();

		return "member/member_coupon_management";
	}

	// 장바구니 추가
	@RequestMapping("member_addcart.shop")
	public String addcart(Model model, int[] order_detail_pk, HttpSession session) throws Exception {
		
	System.out.println("addCart진입");
	
		MemberBean mb = (MemberBean) session.getAttribute("m");
		CartBean cb = new CartBean();
		cb.setMember_id(mb.getMember_id());
		
		OrderDetailBean od = new OrderDetailBean();
	System.out.println("order_detail_pk:" + order_detail_pk);
		
		for (int i=0; i<order_detail_pk.length; i++) {
			od = os.getOrderDetail(order_detail_pk[i]);
			cb.setOrder_detail_pk(od.getOrder_detail_pk());
			service.addCart(cb);
		}
		model.addAttribute("cart", cb);
		return "forward:member_cartlist.shop";
	}

	// 장바구니 리스트
	@RequestMapping("member_cartlist.shop")
	public String cartlist(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		System.out.println("cartList진입");
		
		MemberBean mb = (MemberBean) session.getAttribute("m");
		String member_id = mb.getMember_id();
		CartBean cb = new CartBean();
		cb.setMember_id(member_id);
		
		List<ProductBean> productlist = new ArrayList<ProductBean>();
		List<OrderDetailBean> detaillist = new ArrayList<OrderDetailBean>();
		List<CartBean> cartList = new ArrayList<CartBean>();
		List<ProductDetailBean> productdetaillist = new ArrayList<ProductDetailBean>();
		productlist = service.getProductList(cb);
		detaillist = service.getDetailList(cb);
		cartList = service.getCartList(cb);
		productdetaillist = service.getProductDetailList(cb);
	    
	    int page = 1;
	    int limitPage = 5;
	    
	    if (request.getParameter("page") != null) {
	      page = Integer.parseInt(request.getParameter("page"));
	    }

	    if (request.getParameter("page") == null || request.getParameter("page").equals("")) {
	      page = 1;
	    }

	    int listCount = service.getCartListCount(member_id);
	    cb.setPage(page);

	    int maxPage = (int) ((double) listCount / limitPage + 0.95);
	    int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
	    int endPage = maxPage;
	    if (endPage > startPage + 10 - 1) endPage = startPage + 10 - 1;

		model.addAttribute("productlist", productlist);
		model.addAttribute("detaillist", detaillist);
		model.addAttribute("cartList", cartList);
		model.addAttribute("pd",productdetaillist);
	    model.addAttribute("page", page);
	    model.addAttribute("listCount", listCount);
	    model.addAttribute("startPage", startPage);
	    model.addAttribute("endPage", endPage);
	    model.addAttribute("maxPage", maxPage);
		return "member/member_cart";

	}
	
	// 장바구니 삭제
	@RequestMapping("member_cartdelete.shop")
	public String deletecart(@ModelAttribute CartBean cb, Model model, HttpSession session)throws Exception{
		System.out.println("deletecart 진입");
		System.out.println(cb.getCart_id());
		
		
		MemberBean mb = (MemberBean) session.getAttribute("m");
		CartBean cartdelete = new CartBean();
		cartdelete.setMember_id(mb.getMember_id());
		//cb.setCart_id(cart_id);
		System.out.println(cartdelete.getCart_id());
		
		//service.deletecart(cb);
		//model.addAttribute("cart",cb);
		
		return "member/member_cart";
	}
	
	
	// 관심상품
	@RequestMapping("member_interest.shop")

	public String interest(@ModelAttribute("list") ProductBean product, HttpSession session,
			@ModelAttribute("member_id") String member_id, Model model) throws Exception {
		// JS에서 받아온 변수로 이름 설정
		// product.setMember_id(member_id);

		// session에서 받아온 값으로 이름 설정
		MemberBean mb = (MemberBean) session.getAttribute("m");
		String name = mb.getName();
		String id = mb.getMember_id();
		System.out.println("name : " + name);
		System.out.println("id : " + id);
		product.setMember_id(id);

		List<ProductBean> list = new ArrayList<ProductBean>();

		list = service.getLikeList(product);

		model.addAttribute("list", list);

		return "member/member_interest";
	}

	// ---- 유중님 , 승국님 작업 (version 1.0.0_member)
	// 로그인 페이지
	@RequestMapping("login.shop")
	public String login() {

		return "member/member_login";
	}

	// ID중복검사
	@RequestMapping(value = "/member_idcheck.shop", method = RequestMethod.POST)
	public String member_idcheck(@RequestParam("memid") String id, Model model) throws Exception {

		int result = service.checkMemberId(id);
		model.addAttribute("result", result);

		return "member/idcheckResult";
	}

	// 아이디 찾기
	@RequestMapping("member_findid.shop")
	public String findid() {

		return "member/member_findid";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/member_findpw.shop")
	public String member_findpw() {

		return "member/member_findpw";
	}

	// 회원가입 폼
	@RequestMapping(value = "/member_register.shop")
	public String member_register1() {

		return "member/member_register";
	}

	// 회원가입 저장
	@RequestMapping(value = "/member_complete.shop", method = RequestMethod.POST)
	public String register_complete(@ModelAttribute MemberBean member, HttpServletRequest request) throws Exception {

		String accept_mail1 = request.getParameter("accept_mail_value");

		int accept_mail;

		if (accept_mail1.equals("y")) {
			accept_mail = 1;
		} else {
			accept_mail = 0;
		}
		member.setAccept_mail(accept_mail);
		System.out.println("가입전");
		service.insertMember(member);
		System.out.println("가입후");

		// 가입환영쿠폰
		MemberBean member2 = service.userCheck(member.getMember_id());

		CouponBean coupon = new CouponBean();
		/*
		 * // 컨트롤러에서 처리 할 시 String day = null; Date date = new Date();
		 * System.out.println("date:" + date);
		 * 
		 * SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd"); Calendar cal
		 * = Calendar.getInstance(); Calendar cal2 = Calendar.getInstance();
		 * cal.setTime(date); cal2.setTime(date); cal2.add(Calendar.DATE, 30); day =
		 * sdformat.format(cal2.getTime());
		 */
		Random random = new Random();

		int coupon_code = 1100000 + random.nextInt(10000);

		coupon.setCoupon_id(coupon_code);
		coupon.setCoupon_name("회원가입 축하 쿠폰");
		coupon.setCoupon_discount(10);
		// coupon.setCoupon_date(sdformat.format(cal.getTime()));
		// coupon.setCoupon_expiration(day);
		coupon.setMember_id(member2.getMember_id());

		service.addCoupon(coupon);

		return "member/register_result";
	}

	// 로그인 검사
	@RequestMapping(value = "/member_login_check.shop", method = RequestMethod.POST)
	public String member_login_check(@RequestParam(value = "loginId") String loginId,
			@RequestParam(value = "loginPw") String loginPw, @ModelAttribute AddressBean address, HttpSession session,
			Model model) throws Exception {

		int result = 0;
		MemberBean m = service.userCheck(loginId);
		System.out.println("컨트롤러 로그인검사");
		System.out.println("loginId: " + loginId);
		System.out.println("loginPw: " + loginPw);

		if (m == null) {
			result = 1;
			model.addAttribute("result", result);
			return "member/loginResult";
		} else {
			if (m.getPw().equals(loginPw)) {
				/*
				 * session.setAttribute("member_id", loginId); session.setAttribute("pw",
				 * loginPw); session.setAttribute("nickname", m.getNickname());
				 * session.setAttribute("purchase_point", m.getPurchase_point());
				 */
				session.setAttribute("m", m);
				
				//쿠폰개수
				CouponBean cp = new CouponBean();				
				cp.setMember_id(m.getMember_id());
				int countCoupon = service.countCoupon(cp);
				System.out.println("countCoupon:" + countCoupon);
				session.setAttribute("countCoupon", countCoupon);
				
				// 로그인 성공시 address도 세션 등록
				AddressBean add = service.addressCheck(m.getMember_id());
				session.setAttribute("add", add);

				MemberBean membertest = (MemberBean) session.getAttribute("m");
				System.out.println(membertest.getMember_id());
				return "main/main";
			} else {
				result = 2;
				model.addAttribute("result", result);
				return "member/loginResult";
			}
		}
	}

	// 로그아웃
	@RequestMapping("member_logout.shop")
	public String logout(HttpSession session) {

		session.invalidate();

		return "member/member_logout";
	}

	// 아이디 찾기
	@RequestMapping(value = "/member_findid_ok.shop", method = RequestMethod.POST)
	public String member_findid_ok(@ModelAttribute MemberBean mb, HttpServletResponse response,
			HttpServletRequest request, Model model) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		MemberBean member = service.findid(mb);

		if (member == null) {// 값이 없는 경우
			return "member/auth_result";

		} else {

			// Mail Server 설정
			String charSet = "utf-8";
			String hostSMTP = "smtp.naver.com";
			String hostSMTPid = "fun8905@naver.com";
			String hostSMTPpwd = "1234DBWND!!!***";

			// 보내는 사람 EMail, 제목, 내용
			String fromEmail = "fun8905@naver.com";
			String fromName = "관리자";
			String subject = "아이디 찾기";

			// 받는 사람 E-Mail 주소
			String mail = member.getEmail();
			String member_id = request.getParameter("member_id");
			String name = request.getParameter("name");

			try {
				HtmlEmail email = new HtmlEmail();
				email.setDebug(true);
				email.setCharset(charSet);
				email.setSSL(true);
				email.setHostName(hostSMTP);
				email.setSmtpPort(995);

				email.setAuthentication(hostSMTPid, hostSMTPpwd);
				email.setTLS(true);
				email.addTo(mail, charSet);
				email.setFrom(fromEmail, fromName, charSet);
				email.setSubject(subject);
				email.setHtmlMsg(
						name + "님의" + "<div align='center'> 아이디는 : " + member.getMember_id() + " 입니다." + "</div>");
				email.send();

			} catch (Exception e) {
				System.out.println("메일 발송실패 :" + e);
			}
			model.addAttribute("member_id", member_id);

			out.println("<script>alert('인증번호가 발송되었습니다.'); </script>");
			out.println("<script>self.close(); </script>");

			return "member/member_findid";

		}

	}

	// 비밀번호 찾기 이메일 인증
	@RequestMapping(value = "/member_findpw_ok.shop", method = RequestMethod.POST)
	public String member_findpw_ok(@ModelAttribute MemberBean mem, HttpServletResponse response,
			HttpServletRequest request, Model model) throws Exception {
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();

		String member_id = request.getParameter("member_id");

		/* BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(); */ // 암호화 인코더

		String key = "";
		for (int i = 0; i < 12; i++) {
			key += (char) ((Math.random() * 26) + 97);
		}

		MemberBean member = service.findpw(mem);

		if (member == null) {// 값이 없는 경우

			return "member/auth_result";

		} else {

			// Mail Server 설정
			String charSet = "utf-8";
			String hostSMTP = "smtp.gmail.com";
			String hostSMTPid = "fun06140312@gmail.com";
			String hostSMTPpwd = "1234Dbwnd!!!***"; // 비밀번호 입력해야함

			// 보내는 사람 EMail, 제목, 내용
			String fromEmail = "fun06140312@gmail.com";
			String fromName = "관리자";
			String subject = "비밀번호 찾기";

			// 받는 사람 E-Mail 주소
			String mail = member.getEmail();

			try {
				HtmlEmail email = new HtmlEmail();
				email.setDebug(true);
				email.setCharset(charSet);
				email.setSSL(true);
				email.setHostName(hostSMTP);
				email.setSmtpPort(587);

				email.setAuthentication(hostSMTPid, hostSMTPpwd);
				email.setTLS(true);
				email.addTo(mail, charSet);
				email.setFrom(fromEmail, fromName, charSet);
				email.setSubject(subject);
				/*
				 * 임시비밀번호용 email.setHtmlMsg(member_id + "님의 임시 비밀번호는<br>" +
				 * "<div align='center'> " + member.getPw() +"입니다." + "</div>");
				 */
				email.setHtmlMsg(member_id + "님의 임시 비밀번호는<br>" + "<div align='center'> " + key + "입니다." + "</div>");
				email.send();
				out.print("이메일을 발송했습니다.");

			} catch (Exception e) {
				System.out.println("메일 발송실패 :" + e);
			}

			mem.setPw(key); // 임시비밀번호 저장
			System.out.println("1");

			/* String securepw = encoder.encode(mem.getPw()); */ // 비번 암호화
			System.out.println("2");

			/* mem.setPw(securepw); */
			System.out.println("3");

			service.updatepw(mem); // 비번 저장

			model.addAttribute("member_id", member_id);
			model.addAttribute("sendok", "이메일이 발송되었습니다.");

			return "member/member_findpw";

		}

	}

	// 관심상품 등록 - confirm:확인
	@RequestMapping("product_likey_confirm_agree.shop")
	public String goMemberInterest(@RequestParam("member_id") String member_id,
			@RequestParam("product_id") int product_id, Model model) throws Exception {

		HeartBean hb = new HeartBean();
		hb.setMember_id(member_id);
		hb.setProduct_id(product_id);

		int result = service.enrollLikey(hb);
		System.out.println("result : " + result);

		// 관심상품 등록 여부 확인
		int likeyState = service.likeyState(hb);
		System.out.println("likeyState : " + likeyState);

		model.addAttribute("hb", hb);
		model.addAttribute("likeyState", likeyState);

		return "forward:member_interest.shop";

	}

	// 관심상품 등록 - cofirm:취소
	@RequestMapping("product_likey_confirm_cancel.shop")
	public String reloadProductDetail(@RequestParam("member_id") String member_id,
			@RequestParam("product_id") int product_id, Model model) throws Exception {

		HeartBean hb = new HeartBean();
		hb.setMember_id(member_id);
		hb.setProduct_id(product_id);

		int result = service.enrollLikey(hb);
		System.out.println("result : " + result);

		// 관심상품 등록 여부 확인
		int likeyState = service.likeyState(hb);
		System.out.println("likeyState : " + likeyState);

		model.addAttribute("hb", hb);
		model.addAttribute("likeyState", likeyState);

		return "forward:product_detail.shop";

	}

	// 관심상품 등록 취소
	@RequestMapping("product_likey_cancel.shop")
	public String deleteLikeProduct(@RequestParam("member_id") String member_id,
			@RequestParam("product_id") int product_id, Model model) throws Exception {

		HeartBean hb = new HeartBean();
		hb.setMember_id(member_id);
		hb.setProduct_id(product_id);

		int result = service.cancelLikey(hb);
		if (result == 1) {
			System.out.println("관심상품 삭제 성공");
		} else {
			System.out.println("관심상품 삭제 실패");
		}

		// 관심상품 등록 여부 확인
		int likeyState = service.likeyState(hb);
		System.out.println("likeyState : " + likeyState);

		model.addAttribute("hb", hb);
		model.addAttribute("likeyState", likeyState);

		return "forward:product_detail.shop";

	}

	// 회원정보수정페이지이동
	// 회원페이지1->2로
	@RequestMapping("member_update_view.shop")
	public String member_update_view(String pw, @ModelAttribute AddressBean address, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Model model) throws Exception {

		MemberBean member = (MemberBean) session.getAttribute("m");
		// 회원정보수정 비번 비교
		if (pw != null && !pw.equals(member.getPw())) {

			return "redirect:member_profile.shop";
		} else {
			//
		}

		String member_id = member.getMember_id();
		address.setMember_id(member_id);

		List<AddressBean> addlist = null;

		addlist = service.addressList(address);

		addlist.forEach((n) -> System.out.println(n));

		model.addAttribute("addlist", addlist);
		model.addAttribute("address1", address);

		return "member/member_update2";
	}

	// 회원페이지2->결과페이지
	@RequestMapping("member_update.shop")
	public String member_update(@ModelAttribute MemberBean member, @ModelAttribute AddressBean address,
			HttpSession session, HttpServletRequest request, Model model) throws Exception {

		service.updateMember(member);

		// 세션은 갱신을 안해준 상태라 다시 한번 db를 조회를 해서 정보를 다시 가져와야함
		MemberBean m = service.userCheck(member.getMember_id()); // 유저 정보를 다시 가져옴.

		// 마케팅 수신동의

		String accept_mail1 = request.getParameter("accept_mail_value");

		int accept_mail;

		if (accept_mail1.equals("1")) {
			accept_mail = 1;
		}

		else {
			accept_mail = 0;
		}

		String strPost = request.getParameter("postTmp");
		if (strPost != null && strPost.matches("^[0-9]+$")) { // 정규식 처리로 숫자형 문자열만 가능하게 끔 해서 throws 예외처리 자체를 회피
			int postNum = Integer.parseInt(strPost);
			address.setPost(postNum);
		}

		session.setAttribute("m", m);

		m.setAccept_mail(accept_mail);

		service.emailCheck(m);

		return "member/update_result";
	}

	// 회원페이지2->결과페이지
	@RequestMapping("member_update_address.shop")
	public String member_update_address(@RequestParam(value = "member_id", required = false) String member_id,
			@RequestParam(value = "checkArray[]", required = false) List<String> arrayAddressPk, HttpSession session,
			HttpServletRequest request, Model model) throws Exception {

		AddressBean base_add = (AddressBean) session.getAttribute("add");

		// 기존 배송지를 후보 배송지로
		service.updateAddressState0(base_add.getMember_id());

		// 선택한 후보 배송지를 기본 배송지로 변경.
		AddressBean update_Change = new AddressBean();

		update_Change.setMember_id(member_id);
		update_Change.setAdd_pk(arrayAddressPk.get(0)); // 첫번째로 넘어온 string을 기본 배송지로 변경

		service.updateAddressState1(update_Change);

		AddressBean add = service.addressCheck(member_id);
		session.setAttribute("add", add);

		// 0619배송지 추가
		AddressBean address_insert = new AddressBean();

		address_insert.setMember_id(add.getMember_id());
		service.addressInsert(address_insert);

		// 0619배송지 삭제
		AddressBean address_delete = new AddressBean();
		service.addressDelete(address_delete);

		return "member/update_result";
	}

	// 0620배송지 추가 메서드
	@RequestMapping("member_update_address_add.shop")
	public String member_update_address_add(@RequestParam(value = "member_id", required = false) String member_id,
			@ModelAttribute AddressBean address, HttpSession session, HttpServletRequest request, Model model)
			throws Exception {

		address.setMember_id(member_id);
		service.addressInsert(address);

		return "member/update_result";
	}

	// 0620주소 삭제 메서드
	@RequestMapping("member_update_address_del.shop")
	public String member_update_address_del(@RequestParam(value = "member_id", required = false) String member_id,
			@RequestParam(value = "checkArray[]", required = false) List<String> arrayAddressPk, HttpSession session, HttpServletRequest request, Model model)
			throws Exception {
		
		AddressBean address_del = new AddressBean();
		address_del.setMember_id(member_id);
		//db에 여러번 접속해서 최적화 필요.
		for(int i = 0; i < arrayAddressPk.size(); ++i) {
			address_del.setAdd_pk(arrayAddressPk.get(i));
			service.addressDelete(address_del);
		}

		return "member/update_result";
	}

	// 회원탈퇴 페이지이동 0619 코드 일부 추가

	@RequestMapping("member_withdraw.shop")
	public String member_withdraw_view(String pw, HttpSession session) throws Exception {

		MemberBean member = (MemberBean) session.getAttribute("m");
		// 회원정보수정 비번 비교
		if (pw != null && !pw.equals(member.getPw())) {

			return "redirect:member_withdraw_view.shop";
		} else {
			//
		}

		return "member/member_withdraw2";
	}

	// 회원탈퇴
	@RequestMapping("member_withdraw_result.shop")
	public String member_withdraw(@ModelAttribute MemberBean member, HttpSession session, Model model)
			throws Exception {
		String member_id = (String) session.getAttribute("member_id");

		model.addAttribute("member_id", member_id);

		service.withdrawMember(member);

		session.invalidate(); // 세션 종료

		return "member/withdraw_result";
	}

}
