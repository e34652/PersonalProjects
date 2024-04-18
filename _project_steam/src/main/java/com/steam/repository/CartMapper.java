package com.steam.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.steam.model.ProductDto;

@Mapper
public interface CartMapper {
	
	public void addToCart(long memberNum, long productNum);
	
	public List<ProductDto> cartlistByMemberNum(long memberNum);
	
	public void deleteFromCart(long memberNum, long productNum);
//	public void confirmPurchase();
}
