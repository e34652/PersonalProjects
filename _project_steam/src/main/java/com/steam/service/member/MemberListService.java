package com.steam.service.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.mapper.MemberMapper;
import com.steam.model.Member;

@Service
public class MemberListService {
	
	@Autowired
	private MemberMapper mMapper;

	public List<Member> loadList() {
		List<Member> list = mMapper.selectMemberList();
		return list;
	}
}

