package com.steam.service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.mapper.MemberMapper;
import com.steam.model.Member;

@Service
public class MemberSelectService {
	
	@Autowired
	private MemberMapper mMapper;


	public Member selectMember(long id) {
		Member mDto = mMapper.selectMemberById(id);
		return mDto;
	}
}
