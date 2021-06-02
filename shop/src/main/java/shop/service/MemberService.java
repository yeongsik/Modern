package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.MemberDAO;
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
	
	//비밀번호 찾기
	public MemberBean findpw(MemberBean m)throws Exception {
		return md.findpw(m);
	}
	
	//중복닉네임 체크
	public int checkNickname(String nick) throws Exception{
		return md.checkNickname(nick);
	}
	
	// 로그인 검사
	public MemberBean userCheck(String loginId)throws Exception{
		return md.userCheck(loginId);
	}
}
