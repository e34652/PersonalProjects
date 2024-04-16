package com.steam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.steam.model.LoginStatusDto;
import com.steam.service.member.MemberLoginService;
import com.steam.service.member.MemberSignUpService;

@Controller
public class CartController {
	
		@Autowired
		LoginStatusDto loginStatusDto;
		
		@Autowired
		MemberLoginService mLoginS;
		
		@Autowired
		MemberSignUpService mSignUpS;
			
		@GetMapping("/addToCart")
		public String community() {
			return "community";
		}
		
}
