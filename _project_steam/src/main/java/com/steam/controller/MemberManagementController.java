package com.steam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.steam.model.LoginStatusDto;
import com.steam.model.MemberDto;
import com.steam.service.member.MemberService;

@Controller
public class MemberManagementController {
	
	@Autowired
	MemberService mService;
	
	@Autowired
	LoginStatusDto loginStatusDto;
	
	@GetMapping("/memberManagement")
	public String memberManagement(Model model) {
		if(loginStatusDto.getLoginStatus().equals("admin")) {
			List<MemberDto> mList = mService.selectMemberList();
			model.addAttribute("MemberList" , mList);
			return "memberManagement"; // 실제 뷰 페이지의 경로를 반환
		}else {
			return "redirect:/";
		}
	}
	
	@GetMapping("/mDeleteButton")
	public String clickDel(@RequestParam("num")long num, Model model) {
		
		mService.deleteMember(num);
	
		return "redirect:/memberManagement";
	}
	
	@GetMapping("/mEditButton")
	public String clickEdit(@RequestParam("num") long num, Model model) {
		MemberDto member = mService.selectMemberByNum(num);
		List<MemberDto> mList = mService.selectMemberList();
		model.addAttribute("SelectedMember" , member);
		model.addAttribute("MemberList" , mList);
		return "root";
	}
//	
//	@PostMapping("/mUpdateButton")
//	public String clickUpdate(
//			@RequestParam("memo") String memo,
//			@RequestParam("age") int age,
//			@RequestParam("name") String name, 
//			@RequestParam("email") String email, Model model) {
//		Member member = new Member(name, age, email, memo); 
//		System.out.println(member);
//		mUpdSvc.MemberUpdate(member);
//		System.out.println("1");
//		List<Member> mList = mListLoder.loadList();
//		model.addAttribute("MemberList" , mList);
//		return "root";
//	}
//	
//	@PostMapping("/mInsertButton")
//	public String clickInsert(
//			@RequestParam("memo") String memo,
//			@RequestParam("age") int age,
//			@RequestParam("name") String name, 
//			@RequestParam("email") String email, Model model) {
//		Member member = new Member(name, age, email, memo); 
//		mInsSvc.InsertButton(member);
//		List<Member> mList = mListLoder.loadList();
//		model.addAttribute("MemberList" , mList);
//		return "root";
//	}
}
