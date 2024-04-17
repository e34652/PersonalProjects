package com.steam.repository;

import java.util.List;

import com.steam.model.ProductDto;

public interface CartMapper {
	
	public void addToCart(long memberNum, long productNum);
	
	public List<ProductDto> cartlistByMemberNum(long memberNum);
	
//	public void confirmPurchase();
}
