package com.steam.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.steam.model.Member;


@Mapper
public interface MemberMapper {

	public Member selectMemberByNum(long num);
	
	public Member selectMemberByEmail(String email);
	
	public Member selectMemberByNickname(String nickname);

	public List<Member> selectMemberList();
	
	public void insertMember(Member member);
	
	public void updateMember(Member member);
	
	public void deleteMember(long id);
	
	public int countMembers();
	

		
	
}
