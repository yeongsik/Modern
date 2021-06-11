package shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.wiring.ClassNameBeanWiringInfoResolver;
import org.springframework.stereotype.Service;

import shop.dao.MemberDAO;
import shop.model.CouponBean;
import shop.model.AddressBean;
import shop.model.HeartBean;
import shop.model.MemberBean;
import shop.model.ProductBean;


@Service
public class MemberService {
	
	@Autowired
	private MemberDAO md;
	
		//회원가입
		public void insertMember(MemberBean member) throws Exception{
			md.insertMember(member);
			
		}
		//중복아이디 체크
		public int checkMemberId(String id) throws Exception{
			return md.checkMemberId(id);
		}
		
		//아이디 찾기
		public MemberBean findid(MemberBean mba)throws Exception {
			System.out.println("서비스닉네임");
			System.out.println("이름 :"+mba.getName() );
			return md.findid(mba);
			
		}
		//비밀번호 찾기
		public MemberBean findpw(MemberBean m)throws Exception {
			
			System.out.println("임시비밀번호 :"+m.getPw() );
			return md.findpw(m);
		}
		//비밀번호 저장
		public void updatepw(MemberBean mem)throws Exception {
			
			System.out.println("비밀번호 저장1 :"+mem.getPw() );
			md.updatepw(mem);
		}
		// 회원정보 수정 
		public void updateMember(MemberBean mem) throws Exception {
			md.updateMember(mem);
		}
		
		// 로그인 검사
		public MemberBean userCheck(String loginId)throws Exception{
				return md.userCheck(loginId);
		}
	
		// 관심상품 등록
		public int enrollLikey(HeartBean hb) throws Exception {
		    return md.enrollLikey(hb);
		}
		  
		// 관심상품 등록 여부 확인
		public int likeyState(HeartBean hb) throws Exception {
		    return md.likeyState(hb);
		}
		
		// 관심상품 등록 취소
		public int cancelLikey(HeartBean hb) throws Exception {
		  return md.cancelLikey(hb);
		}
		
		// 관심상품 리스트 가져오기
		public List<ProductBean> getLikeList(ProductBean product) throws Exception {
		  return md.getLikeList(product);
		}
		
		//회원정보수정 이메일
		public void updateEmail(MemberBean mb) throws Exception {
			System.out.println("이메일 저장 :"+mb.getEmail() );
			md.updateEmail(mb);
		}
		
		//회원삭제 
		public void withdrawMember(MemberBean mb) throws Exception {
			System.out.println("회원삭제 :"+mb.getMember_id() );
			md.withdrawMember(mb);
		}
		// 쿠폰 등록
		public void addCoupon(CouponBean cp) throws Exception {
			md.addCoupon(cp);
		}
		
		// 쿠폰 개수 조회
		public int countCoupon(CouponBean cp) throws Exception{
			return md.countCoupon(cp);
		}
		
		// 쿠폰 리스트 조회
		public List<CouponBean> getcouponList(CouponBean cp) throws Exception{
			return md.getcouponList(cp);
		}
		//주소 조회
		public List<AddressBean> addressList(String add) throws Exception {
			return md.addressList(add);
		}
		
		//주소 조회 for id
		public AddressBean addressCheck(String id) {
			return md.addressCheck(id);
		}
		
}
