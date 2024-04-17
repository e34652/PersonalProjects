package com.steam.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import com.steam.model.CartDto;
import com.steam.model.LoginStatusDto;
import com.steam.model.ProductDto;
import com.steam.service.cart.CartService;

@Controller
public class CartController {

	@Autowired
	LoginStatusDto loginStatusDto;

	@Autowired
	CartService cService;

	@GetMapping("/cart")
	public String cart(Long memberNum, Model model) {

		List<ProductDto> cList = cService.loadCart(memberNum);
		model.addAttribute("cartList", cList);
		return "cart";
	}

	@ResponseBody
	@GetMapping("/addToCart")
	public String addToCart(CartDto request, Model model) {
		if (loginStatusDto.getLoginStatus() != "visitor") {
			cService.addToCart(request.getMemberNum(), request.getProductNum());
			return "성공";
		}
		return "실패";
	}
}
