package com.steam.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.steam.service.member.MemberLoginService;
import com.steam.service.member.MemberSignUpService;

@Controller
public class SteamController {

	@Autowired
	MemberLoginService mLoginS;
	
	@Autowired
	MemberSignUpService mSignUpS;
	
	@GetMapping("/")
	public String root() {
		return "root";
	}

	@GetMapping("/loginForm")
	public String memberLoginPage() {
	    return "loginForm"; // 실제 뷰 페이지의 경로를 반환
	}
	
	@GetMapping("/login")
	public String login(HttpServletRequest request) {
		mLoginS.loginCheck(request);
	    return "login"; // 실제 뷰 페이지의 경로를 반환
	}
	
	@GetMapping("/signUp")
	public String signUp(HttpServletRequest request) {
		mSignUpS.createAccount(request);
		

	    return "login"; // 실제 뷰 페이지의 경로를 반환
	}
	
	@GetMapping("/store")
	public String store() {
		return "root";
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
