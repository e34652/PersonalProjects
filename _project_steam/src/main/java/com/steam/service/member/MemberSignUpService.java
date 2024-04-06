package com.steam.service.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.MemberDto;
import com.steam.repository.MemberMapper;

@Service
public class MemberSignUpService {
	@Autowired
	MemberMapper mMapper;

	public void createAccount(HttpServletRequest request) {
		String email = request.getParameter("signUpEmail");
		String pw = request.getParameter("signUpPw");
		String nickname = request.getParameter("signUpNickname");
		String nationality = request.getParameter("signUpNationality");
		MemberDto member = MemberDto.builder()
				.email(email)
				.password(pw)
				.nickname(nickname)
				.nationality(nationality)
				.build();
		mMapper.insertMember(member);

	}

}
