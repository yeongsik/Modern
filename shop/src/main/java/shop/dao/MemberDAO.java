package shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	
	//임시 비밀번호 저장
	public void updatepw(MemberBean mem) throws Exception {
		System.out.println("임시비번 저장"+mem.getPw());
		 session.update("updatepw",mem);;
	}
	
	// 로그인 검사
	@Transactional
	public MemberBean userCheck(String loginId)throws Exception{
		return (MemberBean) session.selectOne("login_check", loginId);
	}

}
