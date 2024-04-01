package com.steam.service.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.Member;
import com.steam.repository.MemberMapper;

@Service
public class MemberService {

	@Autowired
	private MemberMapper mMapper;

	public List<Member> selectMemberList() {
		List<Member> list = mMapper.selectMemberList();
		return list;
	}

	public Member selectMemberByNum(long num) {
		Member mDto = mMapper.selectMemberByNum(num);
		return mDto;
	}

	public Member selectMemberByNickname(String nickname) {
		Member mDto = mMapper.selectMemberByEmail(nickname);
		return mDto;
	}

	public Member selectMemberByEmail(String email) {
		Member mDto = mMapper.selectMemberByEmail(email);
		return mDto;
	}

	public void updateMember(Member member) {
		mMapper.updateMember(member);
	}

	public void deleteMember(long num) {
		mMapper.deleteMember(num);
	}

	public void insertMember(Member member) {
		mMapper.insertMember(member);
	}
	public int countMembers() {
		return mMapper.countMembers();
	}
}
