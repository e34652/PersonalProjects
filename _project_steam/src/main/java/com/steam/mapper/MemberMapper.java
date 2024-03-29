package com.steam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.steam.model.Member;


@Mapper
public interface MemberMapper {

	public Member selectMemberById(long id);

	public List<Member> selectMemberList();
	
	public void insertMember(Member member);
	
	public void updateMember(Member member);
	
	public void deleteMember(long id);
	
	public int countMembers();
	

		
	
}
