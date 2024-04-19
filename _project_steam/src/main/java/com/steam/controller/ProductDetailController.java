package com.steam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.steam.model.LoginInfoDto;
import com.steam.model.ProductDto;
import com.steam.service.product.ProductSearchingService;
import com.steam.service.product.ProductService;


@Controller
public class ProductDetailController {

		@Autowired
		ProductService pService;

		@Autowired
		ProductSearchingService psService;

		@Autowired
		LoginInfoDto loginInfoDto;
		
		@GetMapping("/productDetail")
		public String productDetail(@RequestParam("productNum") long num, Model model) {
			ProductDto pDto = psService.selectProductByNum(num);
			model.addAttribute("product", pDto);
			model.addAttribute("loginInfo", loginInfoDto);
			return "productDetail";
		}
}
