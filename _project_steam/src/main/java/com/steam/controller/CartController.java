package com.steam.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.steam.model.CartDto;
import com.steam.model.LoginInfoDto;
import com.steam.model.ProductDto;
import com.steam.service.cart.CartService;

@Controller
public class CartController {

	@Autowired
	LoginInfoDto loginInfoDto;

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
	public String addToCart(@RequestParam long productNum , @RequestParam long memberNum, Model model) {
		if (loginInfoDto.getStatus() != "visitor") {
			cService.addToCart(memberNum, productNum);
			return "성공";
		}
		return "실패";
	}
	
	@PostMapping("/deleteFromCart")
	public String deleteFromCart(@RequestParam long productNum , @RequestParam long memberNum, Model model) {
		return "asd";
	}
}
