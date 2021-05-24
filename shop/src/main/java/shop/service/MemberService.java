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
	
	//아이디 찾기
	public MemberBean findpwd(MemberBean member)throws Exception {
		return md.findpwd(member);
	}
	
	
}
