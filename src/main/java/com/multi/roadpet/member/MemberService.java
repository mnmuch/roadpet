package com.multi.roadpet.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	MemberDAOImpl dao;

	@Autowired
	BCryptPasswordEncoder pwEncoder;

	// 비밀번호 암호화하기
	public int signUp(MemberDTO dto) {
		System.out.println("MemberService");
		// 1. dto password 값 확인!
		System.out.println(dto.getPassword());
		// 2. pwEncoder.encode() 확인!
		System.out.println(pwEncoder.encode(dto.getPassword()));

		dto.setPassword(pwEncoder.encode(dto.getPassword()));
		int signUp = dao.signUp(dto);

		return signUp;
	}

	// 암호화한 비밀번호를 비교해서 로그인
	public boolean login(MemberDTO dto) {

		// db member 테이블에서 입력하고 dto.getId값으로 암호된 pw 구해오기
		String password = dao.findPw(dto);

		boolean result = false; // pw 다름
		if (pwEncoder.matches(dto.getPassword(), password)) { // (input 1234 . db pw)
			// login 성공!
			result = true;
		}
		return result;
	}
	
		

}

