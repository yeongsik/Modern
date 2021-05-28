package shop.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.internet.MimeMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.model.MemberBean;
import shop.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;

	// 로그인 페이지
	@RequestMapping("login.shop")
	public String login() {

		return "member/member_login";
	}

	// 아이디 중복
	// ID중복검사 ajax함수로 처리부분
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

	// 회원가입 2페이지
	@RequestMapping(value = "/member_register2.shop")
	public String member_register2(HttpServletRequest request, HttpSession session) {
		System.out.println("1");
		String member_id = request.getParameter("member_id");
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String accept_mail1 = request.getParameter("accept_mail_value");

		int accept_mail;

		if (accept_mail1.equals("y")) {
			accept_mail = 1;
		} else {
			accept_mail = 0;
		}

		session.setAttribute("member_id", member_id);
		session.setAttribute("pw", pw);
		session.setAttribute("phone", phone);
		session.setAttribute("accept_mail", accept_mail);

		return "member/member_register2";
	}

	// 회원가입 저장
	@RequestMapping(value = "/member_complete.shop", method = RequestMethod.POST)
	public String register_complete(@ModelAttribute MemberBean member) throws Exception {

		service.insertMember(member);

		return "member/member_login";
	}

	// 비밀번호 찾기 이메일 인증

	@RequestMapping(value = "/member_findpw_ok.shop", method = RequestMethod.POST)
	public String pwd_find_ok(@ModelAttribute MemberBean mem, HttpServletRequest request, HttpServletResponse response,
			Model model) throws Exception {
		response.setContentType("text/html;charset=UTF-8");

		MemberBean member = service.findpw(mem);

		Random random = new Random();
		int key = random.nextInt(4589362) + 49311;
		System.out.println("key");

		if (member == null) {// 값이 없는 경우

			return "member/auth_result";

		} else {

			// Mail Server 설정
			String charSet = "utf-8";
			String hostSMTP = "smtp.naver.com";
			String hostSMTPid = "fun8905@naver.com";
			String hostSMTPpwd = "1234Dbwnd!!!***"; // 비밀번호 입력해야함

			// 보내는 사람 EMail, 제목, 내용 
			String fromEmail = "fun8905@naver.com"; 
			String fromName = "관리자";
			String subject = "비밀번호 찾기";

			// 받는 사람 E-Mail 주소 
			String mail = request.getParameter("email");

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
				email.setHtmlMsg("<p align = 'center'>인증번호 전송</p><br>" + "<div align='center'> 인증번호 : " + member.getPw()
						+ "</div>");
				email.send();
			} catch (Exception e) {
				System.out.println(e);
			}

			model.addAttribute("find_pw", "등록된 email을 확인 하세요~!!");

			return "member/member_findpw";

		}

	}

	// 휴대폰 인증
	/*
	 * @RequestMapping(value = "/sendSms.shop") public String
	 * sendSms(@ModelAttribute MemberBean mem, HttpServletResponse request, Model
	 * model) throws Exception {
	 * 
	 * String api_key = "NCSYECGVXWJCAFBS"; //위에서 받은 api key를 추가 String api_secret =
	 * "AER7UMSW4OURBSYH884BPP1BRVSFNNZE"; //위에서 받은 api secret를 추가
	 * 
	 * 
	 * HashMap<String, String> set = new HashMap<String, String>(); set.put("to",
	 * mem.getPhone(); // 수신번호
	 * 
	 * set.put("from", (String)request.getParameter("from")); // 발신번호, jsp에서 전송한
	 * 발신번호를 받아 map에 저장한다. set.put("text", (String)request.getParameter("text")); //
	 * 문자내용, jsp에서 전송한 문자내용을 받아 map에 저장한다. set.put("type", "sms"); // 문자 타입
	 * 
	 * System.out.println(set);
	 * 
	 * JSONObject result = coolsms.send(set); // 보내기&전송결과받기
	 * 
	 * if ((boolean)result.get("status") == true) {
	 * 
	 * // 메시지 보내기 성공 및 전송결과 출력 System.out.println("성공");
	 * System.out.println(result.get("group_id")); // 그룹아이디
	 * System.out.println(result.get("result_code")); // 결과코드
	 * System.out.println(result.get("result_message")); // 결과 메시지
	 * System.out.println(result.get("success_count")); // 메시지아이디
	 * System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수 } else {
	 * 
	 * // 메시지 보내기 실패 System.out.println("실패");
	 * System.out.println(result.get("code")); // REST API 에러코드
	 * System.out.println(result.get("message")); // 에러메시지 }
	 * 
	 * return "member/member_register1"; //문자 메시지 발송 성공했을때 number페이지로 이동함 }
	 */

}
