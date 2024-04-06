package com.steam.service.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.MemberDto;
import com.steam.repository.MemberMapper;

@Service
public class MemberService {

	@Autowired
	private MemberMapper mMapper;

	public List<MemberDto> selectMemberList() {
		List<MemberDto> list = mMapper.selectMemberList();
		return list;
	}

	public MemberDto selectMemberByNum(long num) {
		MemberDto mDto = mMapper.selectMemberByNum(num);
		return mDto;
	}

	public MemberDto selectMemberByNickname(String nickname) {
		MemberDto mDto = mMapper.selectMemberByEmail(nickname);
		return mDto;
	}

	public MemberDto selectMemberByEmail(String email) {
		MemberDto mDto = mMapper.selectMemberByEmail(email);
		return mDto;
	}

	public void updateMember(MemberDto member) {
		mMapper.updateMember(member);
	}

	public void deleteMember(long num) {
		mMapper.deleteMember(num);
	}

	public void insertMember(MemberDto member) {
		mMapper.insertMember(member);
	}
	public int countMembers() {
		return mMapper.countMembers();
	}
}
