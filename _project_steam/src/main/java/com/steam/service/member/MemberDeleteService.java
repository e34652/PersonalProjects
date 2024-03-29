package com.steam.service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.mapper.MemberMapper;



@Service
public class MemberDeleteService {

	@Autowired
	private MemberMapper mMapper;


	public void DeleteButton(long id) {
		mMapper.deleteMember(id);
	}

}
