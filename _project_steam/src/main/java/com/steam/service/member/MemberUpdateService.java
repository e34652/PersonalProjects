package com.steam.service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.mapper.MemberMapper;
import com.steam.model.Member;

@Service
public class MemberUpdateService {
	
	@Autowired
	private MemberMapper mMapper;


	public void MemberUpdate(Member member) {
		mMapper.updateMember(member);
	}
}
