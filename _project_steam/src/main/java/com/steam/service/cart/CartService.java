package com.steam.service.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.ProductDto;
import com.steam.repository.CartMapper;

import lombok.extern.slf4j.Slf4j;


@Service
@Slf4j
public class CartService {

	@Autowired
	CartMapper cMapper;
	public void addToCart(long memberNum, long productNum) {
	
		cMapper.addToCart(memberNum, productNum);
	}
	
	
	public List<ProductDto> loadCart(long memberNum){
		List<ProductDto> cList = cMapper.cartlistByMemberNum(memberNum);
		
		return cList;
	}
}
