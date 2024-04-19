package com.steam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.steam.model.LoginInfoDto;
import com.steam.model.ProductDto;
import com.steam.service.cart.AddToCartService;
import com.steam.service.cart.CartService;

@Controller
public class CartController {

	@Autowired
	LoginInfoDto loginInfoDto;

	@Autowired
	CartService cService;
	
	@Autowired
	AddToCartService atcService;

	@GetMapping("/cart")
	public String cart(Long memberNum, Model model) {
		List<ProductDto> cList = cService.loadCartList(memberNum);
		model.addAttribute("cartList", cList);
		model.addAttribute("loginInfo", loginInfoDto);
		return "cart";
	}

	@ResponseBody
	@PostMapping("/addToCart")
	public String addToCart(@RequestParam long productNum, @RequestParam long memberNum, Model model) {
		String result = atcService.addToCart(memberNum, productNum);
		return result;
	}

	@ResponseBody
	@PostMapping("/deleteFromCart")
	public ResponseEntity<Void> deleteFromCart(@RequestParam long productNum, @RequestParam long memberNum, Model model) {
		cService.deleteFromCart(memberNum, productNum);
		 return ResponseEntity.ok().build();
	}
}
