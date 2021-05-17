package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.MemberDAO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO md;
}
