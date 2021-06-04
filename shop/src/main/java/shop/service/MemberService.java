package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
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
		//중복닉네임 체크
		public int checkNickname(String nick) throws Exception{
			return md.checkNickname(nick);
		}
		//아이디 찾기
		public MemberBean findid(MemberBean mba)throws Exception {
			System.out.println("서비스닉네임");
			System.out.println("닉네임 :"+mba.getNickname() );
			return md.findid(mba);
			
		}
		//비밀번호 찾기
		public MemberBean findpw(MemberBean m)throws Exception {
			
			System.out.println("임시비밀번호 :"+m.getPw() );
			return md.findpw(m);
		}
		//임시비밀번호 저장
		public void updatepw(MemberBean mem)throws Exception {
			
			System.out.println("임시비밀번호1 :"+mem.getPw() );
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
}
