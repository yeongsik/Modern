package shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shop.model.HeartBean;
import shop.model.MemberBean;

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
	//닉네임 중복 체크  
		public int checkNickname(String nick) throws Exception {
			int re1 = -1;	// 사용 가능한 ID
			MemberBean mb = (MemberBean) session.selectOne("nickname_check", nick);
			if (mb != null)
				re1 = 1; 	// 중복id
			return re1;
		}
	
	// 회원 가입
	public void insertMember(MemberBean m) throws Exception {
		session.insert("member_register", m);
	}
	
	// 로그인 검사
	@Transactional
	public MemberBean userCheck(String member_id)throws Exception{
		return (MemberBean) session.selectOne("login_check", member_id);
	}
	
	//비밀번호 찾기
	public MemberBean findpw(MemberBean mb) throws Exception {

		return (MemberBean) session.selectOne("find_pw", mb);
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
	
}
