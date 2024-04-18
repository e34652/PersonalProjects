package com.steam.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.steam.model.LoginInfoDto;
import com.steam.model.MemberDto;
import com.steam.service.member.MemberLoginService;
import com.steam.service.member.MemberSignUpService;

@Controller
public class MemberController {

	@Autowired
	LoginInfoDto loginInfoDto;
	
	@Autowired
	MemberLoginService mLoginS;
	
	@Autowired
	MemberSignUpService mSignUpS;

	@GetMapping("/loginForm")
	public String loginForm(Model model) {
		model.addAttribute("loginInfo", loginInfoDto);
		
	    return "loginForm"; // 실제 뷰 페이지의 경로를 반환
	}
	
	@PostMapping("/login")
	public String login(HttpServletRequest request,Model model) {

	     String email = request.getParameter("loginEmail");
	        String password = request.getParameter("loginPw");
	        
	        if (email != null && password != null) {
	            if (mLoginS.setLoginStatus(email, password)) {
	            	
	                return "redirect:/";
	            }
	        }
			 model.addAttribute("error", "123");
			 
		        return "/loginForm";
	}
	
	@GetMapping("/logout")
	public String logout(Model model) {
		loginInfoDto.setStatus("visitor");
		model.addAttribute("loginInfo", loginInfoDto);
		
	    return "redirect:/"; // 실제 뷰 페이지의 경로를 반환
	}
	
	@PostMapping("/signUp")
	public String signUp(MemberDto request) {			
		
			MemberDto mDto = MemberDto.builder()
					.email(request.getEmail())
					.password(request.getPassword())
					.nickname(request.getNickname())
					.nationality(request.getNationality())
					.authority("member")
					.build();
		mSignUpS.createAccount(mDto);
		
		return "redirect:/loginForm"; // 실제 뷰 페이지의 경로를 반환
	}	
}
