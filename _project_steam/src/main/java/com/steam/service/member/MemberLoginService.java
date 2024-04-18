package com.steam.service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.LoginInfoDto;
import com.steam.model.MemberDto;
import com.steam.repository.MemberMapper;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberLoginService {

	@Autowired
	MemberMapper mMapper;
	
	@Autowired
	LoginInfoDto loginStat;
	
	public boolean setLoginStatus(String email, String pw) {
        
		
		MemberDto mDto = mMapper.selectMemberByEmail(email);
		System.out.println(mDto);
		if (mDto != null && email != null && pw != null && mDto.getEmail() != null && mDto.getPassword() != null) {
			if (mDto.getEmail().equals(email) && mDto.getPassword().equals(pw)) {
				loginStat.setStatus("member");
				loginStat.setMemberNum(mDto.getNum());
				if(mDto.getAuthority().equals("admin")) {
					loginStat.setStatus("admin");
					return true;
				}
				return true;
				}
		}
		loginStat.setStatus("visitor");
		return false;
	}
}
