package shop.controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
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


import shop.model.CouponBean;
import shop.model.AddressBean;
import shop.model.HeartBean;
import shop.model.MemberBean;
import shop.model.ProductBean;
import shop.model.ReviewBean;
import shop.service.MemberService;

@Controller
public class MemberController {
  @Autowired
  private MemberService service;
  
  	// 마이페이지 메인화면
	@RequestMapping("member_main.shop")
	public String main(HttpSession session) throws Exception {
		System.out.println("마이페이지 진입");
		
		CouponBean cp = new CouponBean();
		MemberBean member = (MemberBean) session.getAttribute("m");
		cp.setMember_id(member.getMember_id());
		System.out.println("member_id:"+cp.getMember_id());
		
		int countCoupon = service.countCoupon(cp);
		System.out.println("countCoupon_controller:"+countCoupon);
		
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

  // 배송지 관리 
  @RequestMapping("member_address.shop")
  public String address() {
    return "member/member_update";
  }
  
 
  // 회원 등급
  @RequestMapping("member_membership.shop")
  public String membership() {
    return "member/member_membership";
  }
  
  // 구매후기
  @RequestMapping("member_board.shop")
  public String board() {
    return "member/member_item_review";
  }
  
  // 상품 문의
  @RequestMapping("member_item_question.shop")
  public String question() {
    return "member/member_item_question";
  }
  
  // 1:1 문의
  @RequestMapping("member_personal_question.shop")
  public String personalQuestion() {
    return "member/member_personal_question";
  }
  
	// 쿠폰페이지
	@RequestMapping("member_coupon.shop")
	public String coupon(HttpSession session, Model model) throws Exception {
		System.out.println("member_coupon_controller");
		
		// 쿠폰 리스트 출력
		List<CouponBean> cpList = new ArrayList<CouponBean>();

		CouponBean cp = new CouponBean();
		MemberBean member = (MemberBean) session.getAttribute("m");
		cp.setMember_id(member.getMember_id());
		System.out.println("member_id:" + cp.getMember_id());

		cpList = service.getcouponList(cp);
		System.out.println("service 후 session 전 cpList:" + cpList);
		
		// session.setAttribute("cpList:", cpList);
		model.addAttribute("cpList", cpList);

		return "member/member_coupon";
	}

  // 포인트
  @RequestMapping("member_point.shop")
  public String point() {
    return "member/member_point";
  }
  
  // 장바구니
  @RequestMapping("member_cart.shop")
  public String cart() {
    return "member/member_cart";
  }

  // 관심상품
  @RequestMapping("member_interest.shop")

  public String interest(@ModelAttribute("list") ProductBean product, HttpSession session, @ModelAttribute("member_id") String member_id, Model model) throws Exception {
    // JS에서 받아온 변수로 이름 설정
    // product.setMember_id(member_id);
    
    // session에서 받아온 값으로 이름 설정
    MemberBean mb = (MemberBean)session.getAttribute("m");
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
		System.out.println(member2.getMember_id());
		
		CouponBean coupon = new CouponBean();
		/*
		// 컨트롤러에서 처리 할 시
		String day = null;
		Date date = new Date();
		System.out.println("date:" + date);

		SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		Calendar cal2 = Calendar.getInstance();
		cal.setTime(date);
		cal2.setTime(date);
		cal2.add(Calendar.DATE, 30);
		day = sdformat.format(cal2.getTime());
		*/
		Random random = new Random();
		int coupon_code = 3300000 + random.nextInt(10000);
		
		coupon.setCoupon_id(coupon_code);
		coupon.setCoupon_name("회원가입 축하 쿠폰");
		coupon.setCoupon_discount(10);
		//coupon.setCoupon_date(sdformat.format(cal.getTime()));
		//coupon.setCoupon_expiration(day);
		coupon.setMember_id(member2.getMember_id());
		
		service.addCoupon(coupon);
		
		return "member/register_result";
	}

	// 로그인 검사
	@RequestMapping(value = "/member_login_check.shop", method = RequestMethod.POST)
	public String member_login_check(@RequestParam(value = "loginId") String loginId, 
									@RequestParam(value = "loginPw") String loginPw,
									@ModelAttribute AddressBean address,
									HttpSession session, Model model) throws Exception {
		
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
				
				// 로그인 성공시 address도 세션 등록  
				AddressBean add = service.addressCheck(m.getMember_id());
				session.setAttribute("add", add);
				
				//후보 배송지 리스트
				List<AddressBean> addlist = new ArrayList<AddressBean>();
				addlist = service.addressList(m.getMember_id());
				
				session.setAttribute("addlist", addlist);
				
				
				
				
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
	
	


	//아이디 찾기
	@RequestMapping(value = "/member_findid_ok.shop", method = RequestMethod.POST)
	public String member_findid_ok(@ModelAttribute MemberBean mb,  
			HttpServletResponse response, HttpServletRequest request, Model model)
			throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		MemberBean member = service.findid(mb);
		
		if (member == null) {// 값이 없는 경우
			return "member/auth_result";
			
		} else  {

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
			String nickname = request.getParameter("nickname");
			
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
				email.setHtmlMsg(nickname + "님의" + "<div align='center'> 아이디는 : " + member.getMember_id() +" 입니다." + "</div>");
				email.send();
				
			} catch (Exception e) {
				System.out.println("메일 발송실패 :"+e);
			}
			model.addAttribute("member_id", member_id);
			
			out.println("<script>alert('인증번호가 발송되었습니다.'); </script>");
			out.println("<script>self.close(); </script>");
			
			return "member/member_findid";

		}

	}
	
	// 비밀번호 찾기 이메일 인증
	@RequestMapping(value = "/member_findpw_ok.shop", method = RequestMethod.POST)
	public String member_findpw_ok(@ModelAttribute MemberBean mem, HttpServletResponse response, HttpServletRequest request, Model model)
			throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String member_id = request.getParameter("member_id");
		
		/* BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(); */	//암호화 인코더
		
		
		  String key = ""; for (int i = 0; i < 12; i++) { key += (char) ((Math.random() * 26) + 97); }
		 
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
				/* 임시비밀번호용
				 * email.setHtmlMsg(member_id + "님의 임시 비밀번호는<br>" + "<div align='center'> " +
				 * member.getPw() +"입니다." + "</div>");
				 */
				email.setHtmlMsg(member_id + "님의 임시 비밀번호는<br>" + "<div align='center'> "
						+ key +"입니다." + "</div>");
				email.send();
				out.print("이메일을 발송했습니다.");
				
				
			} catch (Exception e) {
				System.out.println("메일 발송실패 :"+e);
			}
			
			
			mem.setPw(key); //임시비밀번호 저장
			System.out.println("1");
			
			/* String securepw = encoder.encode(mem.getPw()); */ //비번 암호화
			System.out.println("2");
			
			/* mem.setPw(securepw); */
			System.out.println("3");
			
			service.updatepw(mem); //비번 저장
			
			model.addAttribute("member_id", member_id);
			model.addAttribute("sendok", "이메일이 발송되었습니다.");
			

			return "member/member_findpw";

		}
 
	}
	
  
  // 관심상품 등록 - confirm:확인
	@RequestMapping("product_likey_confirm_agree.shop")
  public String goMemberInterest(
       @RequestParam("member_id") String member_id, @RequestParam("product_id") int product_id, Model model) throws Exception {
	  
	  HeartBean hb = new HeartBean();
	  hb.setMember_id(member_id); 
	  hb.setProduct_id(product_id);
	  
	  int result = service.enrollLikey(hb);
	  System.out.println("result : " + result);
	  
	  // 관심상품 등록 여부 확인
	  int likeyState = service.likeyState(hb);
	  System.out.println("likeyState : " + likeyState);
	  
	  model.addAttribute("hb",hb);
	  model.addAttribute("likeyState",likeyState);
	  
    return "forward:member_interest.shop";
	  
	  
	}
  
   //관심상품 등록 - cofirm:취소
   @RequestMapping("product_likey_confirm_cancel.shop")
   public String reloadProductDetail(
        @RequestParam("member_id") String member_id, @RequestParam("product_id") int product_id, Model model) throws Exception {

     HeartBean hb = new HeartBean();
     hb.setMember_id(member_id); 
     hb.setProduct_id(product_id);
     
     int result = service.enrollLikey(hb);
     System.out.println("result : " + result);
     
     // 관심상품 등록 여부 확인
     int likeyState = service.likeyState(hb);
     System.out.println("likeyState : " + likeyState);
     
     model.addAttribute("hb",hb);
     model.addAttribute("likeyState",likeyState);
     
       return "forward:product_detail.shop";
     
   }
   
   //관심상품 등록 취소
   @RequestMapping("product_likey_cancel.shop")
   public String deleteLikeProduct(
        @RequestParam("member_id") String member_id, @RequestParam("product_id") int product_id, Model model) throws Exception {
     
     HeartBean hb = new HeartBean();
     hb.setMember_id(member_id); 
     hb.setProduct_id(product_id);
     
     int result = service.cancelLikey(hb);
     if(result == 1) {
       System.out.println("관심상품 삭제 성공");
     } else {
       System.out.println("관심상품 삭제 실패");
     }
     
     // 관심상품 등록 여부 확인
     /* int likeyState = 0; */
     int likeyState = service.likeyState(hb);
     System.out.println("likeyState : " + likeyState);
     
     model.addAttribute("hb",hb);
     model.addAttribute("likeyState",likeyState);
     
       return "forward:product_detail.shop";
     
   }
 
	//회원정보수정페이지이동
	//회원페이지1->2로
	@RequestMapping("member_update_view.shop")
	public String member_update_view() {
		//비번 비교, 배송지 정보랑 세션으로 , 체크 박스도 수정
		
		return "member/member_update2";
	}
	
	//회원페이지2->결과페이지
	@RequestMapping("member_update.shop")
	public String member_update(@ModelAttribute MemberBean member, @ModelAttribute AddressBean address, 
			HttpSession session, HttpServletRequest request, Model model) throws Exception {
		
		 	service.updateMember(member);
		
		
		
		//세션은 갱신을 안해준 상태라 다시 한번 db를 조회를 해서 정보를 다시 가져와야함
		MemberBean m = service.userCheck(member.getMember_id());
		session.setAttribute("m", m);
		
		
		
		return "member/update_result";
	}
	
	//회원탈퇴 페이지이동
	
	  @RequestMapping("member_withdraw.shop") 
	  public String member_withdraw_view() {
	  
	  return "member/member_withdraw2"; 
	}
	 
	
	 
	//회원탈퇴 
	@RequestMapping("member_withdraw_result.shop")
	public String member_withdraw(@ModelAttribute MemberBean member, HttpSession session, Model model) throws Exception {
		String member_id = (String) session.getAttribute("member_id");
			
		model.addAttribute("member_id", member_id);
		
		service.withdrawMember(member);

		session.invalidate();  //세션 종료
		
		return "member/withdraw_result";
	}
	
	// 쿠폰 개수 조회
	//public int 
	
	// 쿠폰 리스트 조회
	
	
}
