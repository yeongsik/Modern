package shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shop.model.HeartBean;
import shop.model.MemberBean;
import shop.model.ProductBean;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession session;
	
	//아이디 중복 체크  
	public int checkMemberId(String id) throws Exception {
		int re = -1;	// 사용 가능한 ID
		MemberBean mb = (MemberBean) session.selectOne("login_check", id);
		if (mb != null)
			re = 1; 	// 중복id
		return re;
	}
	
	// 회원 가입
	public void insertMember(MemberBean m) throws Exception {
	session.insert("member_register", m);
	}
	//아이디 찾기
	public MemberBean findid(MemberBean idm) throws Exception {
		System.out.println("dao닉네임");
		System.out.println("아이디 :"+idm.getMember_id() );
		return (MemberBean) session.selectOne("findid", idm);
	}
	
	//비밀번호 찾기
	public MemberBean findpw(MemberBean pm) throws Exception {
		System.out.println("222");
		System.out.println("임시비밀번호 :"+pm.getPw() );
		return (MemberBean) session.selectOne("findpw", pm);
	}
	
	// 비밀번호 저장
	public void updatepw(MemberBean mem) throws Exception {
		System.out.println("비번 저장 : "+mem.getPw());
		 session.update("updatepw", mem);
	}
	
	// 로그인 검사
	@Transactional
	public MemberBean userCheck(String loginId)throws Exception{
		return (MemberBean) session.selectOne("login_check", loginId);
	}

	// 관심상품 등록
	public int enrollLikey(HeartBean hb) throws Exception {
	  return session.insert("enroll_likey", hb);
	}
	
	// 관심상품 등록 여부 확인
	public int likeyState(HeartBean hb) throws Exception {
	  int state = -1; // 미등록 상태
	  HeartBean result = (HeartBean) session.selectOne("likey_state", hb);
	  if(result != null) state = 1; // 등록 상태
	  return state;
	}
	
	// 관심상품 등록 취소
	public int cancelLikey(HeartBean hb) throws Exception {
	  return session.delete("cancel_likey", hb);
	}
	
	// 관심상품 리스트 가져오기
	public List<ProductBean> getLikeList(ProductBean product) throws Exception {
	  return session.selectList("like_list", product);
	}
	
	//회원정보수정 이메일
	public void updateEmail(MemberBean mb) throws Exception {
		System.out.println("비밀번호 저장 :"+mb.getEmail() );
		session.update("update_member_email",mb);
	}
	
	//회원정보삭제
	public void withdrawMember(MemberBean mb) throws Exception {
		System.out.println("회원삭제dao :"+mb.getMember_id() );
		session.delete("deleteMember", mb);
	}
}
