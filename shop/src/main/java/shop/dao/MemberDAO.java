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
	@Transactional 
	  public int checkMemberId(String id) throws Exception {
		int reId = 0;
		MemberBean mb = (MemberBean) session.selectOne("id_check", id);
		if(mb != null)
			reId = 1; 
		
		return reId;
	}
	
	// 회원 가입
	@Transactional
	public void insertMember(MemberBean member) throws Exception {
		session.insert("member_register2", member);
	}
	
	//아이디 찾기
	@Transactional
	public MemberBean findpwd(MemberBean member) throws Exception {

		return (MemberBean) session.selectOne("findpwd", member);
	}
}
