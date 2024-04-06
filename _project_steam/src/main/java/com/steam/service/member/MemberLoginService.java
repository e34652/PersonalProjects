package com.steam.service.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.LoginStatusDto;
import com.steam.model.MemberDto;
import com.steam.repository.MemberMapper;

@Service
public class MemberLoginService {

	@Autowired
	MemberMapper mMapper;
	
	
	
	public void loginCheck(HttpServletRequest request) {
		String email = request.getParameter("loginEmail");
		String pw = request.getParameter("loginPw");
		MemberDto mDto = mMapper.selectMemberByEmail(email);
		LoginStatusDto loginStat = new LoginStatusDto();
		
		if (email != null && pw != null) {
			if (mDto.getEmail().equals(email) && mDto.getPassword().equals(pw)) {
				
				loginStat.setLoginStatus(1);
				return;
			}
		}
		loginStat.setLoginStatus(0);
		return;
	}
}
