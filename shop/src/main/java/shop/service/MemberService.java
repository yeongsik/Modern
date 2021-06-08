package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.wiring.ClassNameBeanWiringInfoResolver;
import org.springframework.stereotype.Service;

import shop.dao.MemberDAO;
import shop.model.HeartBean;
import shop.model.MemberBean;


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
			
			System.out.println("비밀번호 저장 :"+mem.getPw() );
			md.updatepw(mem);
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
		
		//회원정보수정 이메일
		public void updateEmail(MemberBean mb) throws Exception {
			System.out.println("비밀번호 저장 :"+mb.getEmail() );
			md.updateEmail(mb);
		}
		
		//회원삭제 
		public void withdrawMember(MemberBean mb) throws Exception {
			System.out.println("회원삭제 :"+mb.getMember_id() );
			md.withdrawMember(mb);
		}
}
