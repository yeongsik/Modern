package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.service.MemberService;

@Controller
public class MemberController {
  @Autowired
  private MemberService memberservice;

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
  
  
  
  
  
  
  
  
}
