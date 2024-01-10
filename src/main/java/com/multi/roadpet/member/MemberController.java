package com.multi.roadpet.member;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

	@Autowired // 스프링이 찾아서 주소를 넣어줌.
	MemberDAO dao;

	@Autowired
	MemberService service;

	@RequestMapping("member/signUp")
	public void signUp(MemberDTO dto) throws Exception {
		System.out.println("MemberController");
		System.out.println(dto);

		int result = service.signUp(dto);
		String resultText = "";
		if (result == 1) {
			resultText = "회원가입에 성공했습니다.";
		} else {
			resultText = "회원가입에 실패했습니다.";
		}
		System.out.println(resultText);
	}

	@RequestMapping("member/login")
	public void login(MemberDTO dto, HttpSession session) throws Exception {
		System.out.println(dto);

		boolean result = service.login(dto); // boolean(true/false)
		System.out.println(result);
		if (result = true) {
			session.setAttribute("login_id", dto.getLogin_id());
		}
	}

	//아이디 중복체크
	@PostMapping("member/idCheck")
	@ResponseBody
	public Object idCheck(@RequestParam("id") String id, MemberDTO dto) throws Exception {
		
		System.out.println("id :" + id);
		int result = dao.idCheck(id);
		System.out.println("result :" + result);
		return result;
		
	}

}// 클래스
