package com.steam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SteamController {

	
	
	@GetMapping("/")
	public String root() {
		return "root";
	}

	@GetMapping("/memberLoginForm")
	public String memberLoginPage() {
	    return "memberLoginPage"; // 실제 뷰 페이지의 경로를 반환
	}
	
	@GetMapping("/store")
	public String store() {
		return "root";
	}
	
	@GetMapping("/wishList")
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
