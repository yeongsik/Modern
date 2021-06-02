package shop.controller;

import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.service.MemberService;
import shop.dao.MemberDAO;
import shop.model.MemberBean;
import org.springframework.ui.Model;
@Controller
public class MemberController {
  @Autowired
  private MemberService service;

  // 마이페이지 메인화면
  @RequestMapping("member_main.shop")
  public String main() {
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

  // 배송지 관리 
  @RequestMapping("member_address.shop")
  public String address() {
    return "member/member_update";
  }
  
  // 회원 탈퇴  
  @RequestMapping("member_withdraw.shop")
  public String withDraw() {
    return "member/member_withdraw";
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
  
  // 쿠폰
  @RequestMapping("member_coupon.shop")
  public String coupon() {
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
  public String interest() {
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

	// 닉네임 중복
	@RequestMapping(value = "/member_nickcheck.shop", method = RequestMethod.POST)
	public String member_nicknamecheck(@RequestParam("memnickname") String nick, Model model) throws Exception {

		int result1 = service.checkNickname(nick);
		model.addAttribute("result1", result1);

		return "member/nickcheckResult";
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
	@RequestMapping(value = "/member_register1.shop")
	public String member_register1() {
			
		return "member/member_register1";
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
		
		service.insertMember(member);

		return "member/member_login";
	}
	

	// 로그인 검사
	@RequestMapping(value = "/member_login_check.shop", method = RequestMethod.POST)
	public String member_login_check(@RequestParam(value = "loginId") String loginId, 
									@RequestParam(value = "loginPw") String loginPw,
									HttpSession session, Model model) throws Exception {
			int result = 0;
			MemberBean m = service.userCheck(loginId);

			if (m == null) {
				result = 1;
				model.addAttribute("result", result);
				return "member/loginResult";
			} else {
				if (m.getPw().equals(loginPw)) {
					session.setAttribute("member_id", loginId);

					String nickname = m.getNickname();

					model.addAttribute("nickname", nickname);

					return "main/main";
				} else {
					result = 2;
					model.addAttribute("result", result);

					return "member/loginResult";
				}
			}
		}
		//로그아웃
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
			
			
			  String key = ""; for (int i = 0; i < 12; i++) { key += (char) ((Math.random()
			  * 26) + 97); }
			 
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
		
  
  
  
  
  
  
}
