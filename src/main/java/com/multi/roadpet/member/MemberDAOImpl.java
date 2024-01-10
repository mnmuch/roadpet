package com.multi.roadpet.member;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;


@Repository
@Component
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	SqlSessionTemplate my;
	
	@Override
	public int signUp(MemberDTO dto) {
		int result = my.insert("member.signUp", dto);
		return result;
	}
	
	@Override
	public int login(MemberDTO dto) {
		int result = my.selectOne("member.login", dto);
		return result;
	}
	
	@Override
	public String findPw(MemberDTO dto) {
		String result = my.selectOne("member.findPw", dto);
		return result;
	}
	
	@Override
	public int idCheck(String id) {
		int result = my.selectOne("member.idCheck", id);
		return result;
	}

	
}

