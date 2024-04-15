package com.steam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.steam.model.LoginStatusDto;
import com.steam.model.ProductDto;
import com.steam.service.product.ProductSearchingService;
import com.steam.service.product.ProductService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ProductDetailController {

		@Autowired
		ProductService pService;

		@Autowired
		ProductSearchingService psService;

		@Autowired
		LoginStatusDto loginStatusDto;
		
		@GetMapping("/productDetail")
		public String productDetail(@RequestParam("num") long num, Model model) {
			
			ProductDto product = psService.selectProductByNum(num);
			model.addAttribute("product", product);
			
			return "productDetail";
		}




}
