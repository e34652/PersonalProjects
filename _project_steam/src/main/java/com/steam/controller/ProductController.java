package com.steam.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.steam.model.LoginStatusDto;
import com.steam.model.MemberDto;
import com.steam.service.member.MemberLoginService;
import com.steam.service.member.MemberSignUpService;

@Controller
public class ProductController {

	@Autowired
	LoginStatusDto loginStatusDto;
	
	@Autowired
	MemberLoginService mLoginS;
	
	@Autowired
	MemberSignUpService mSignUpS;
	
	@GetMapping("/")
	public String root(Model model) {
		model.addAttribute("loginStatus", loginStatusDto.getLoginStatus());
		return "root";
	}

	@GetMapping("/loginForm")
	public String memberLoginPage(Model model) {
		model.addAttribute("loginStatus", loginStatusDto.getLoginStatus());
		System.out.println(loginStatusDto.getLoginStatus());
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
			 model.addAttribute("error", "아이디 또는 비밀번호가 일치하지 않습니다");
		        return "/loginForm";
	}
	
	@PostMapping("/signUp")
	public String signUp(HttpServletRequest request, Model model) {
			String email = request.getParameter("signUpEmail");
			String pw = request.getParameter("signUpPw");
			String nickname = request.getParameter("signUpNickname");
			String nationality = request.getParameter("signUpNationality");
			
			MemberDto mDto = MemberDto.builder()
					.email(email)
					.password(pw)
					.nickname(nickname)
					.nationality(nationality)
					.build();
		
		int result = mSignUpS.createAccount(mDto);
		return "loginForm"; // 실제 뷰 페이지의 경로를 반환
	}
	
	@GetMapping("/store")
	public String store() {
		return "redirect:/";
	}
	
	@GetMapping("/wishlist")
	public String wishList() {
		return "wishList";
	}
	
	@GetMapping("/news")
	public String news() {
		return "news";
	}
	
	@GetMapping("/community")
	public String community() {
		return "community";
	}
	
	@GetMapping("/myPage")
	public String myPage() {
		return "myPage";
	}
	
	@GetMapping("/myGames")
	public String myGames() {
		return "myGames";
	}
	
	@GetMapping("/myOrders")
	public String myOrders() {
		return "myOrders";
	}
	@GetMapping("/myInfo")
	public String myInfo() {
		return "myInfo";
	}
//	@PostMapping
	
}
