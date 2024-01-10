package com.multi.roadpet.member;

public interface MemberDAO {

	int signUp(MemberDTO dto) throws Exception;
	
	int login(MemberDTO dto) throws Exception;
	
	String findPw(MemberDTO dto) throws Exception;
	
	int idCheck(String id) throws Exception;
	
	
	



	
}
