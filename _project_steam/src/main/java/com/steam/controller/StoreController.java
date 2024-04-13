package com.steam.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.steam.model.LoginStatusDto;
import com.steam.model.MemberDto;
import com.steam.model.ProductDto;
import com.steam.service.member.MemberLoginService;
import com.steam.service.member.MemberSignUpService;
import com.steam.service.product.ProductSearchingService;


@Controller
public class StoreController {

	@Autowired
	LoginStatusDto loginStatusDto;
	
	@Autowired
	ProductSearchingService pSearchingS;
		
	@GetMapping("/news")
	public String news() {
		return "news";
	}
	
	@GetMapping("/store")
	public String store() {
		return "redirect:/";
	}
	
	@GetMapping("/wishlist")
	public String wishList() {
		return "wishList";
	}
	
	@GetMapping("/")
	public String root(Model model) {
		List<ProductDto> list = pSearchingS.selectProductList();
		model.addAttribute("loginStatus", loginStatusDto.getLoginStatus());
		model.addAttribute("productList", list);
		
		return "root";
	}
	

//	@PostMapping
	
}
