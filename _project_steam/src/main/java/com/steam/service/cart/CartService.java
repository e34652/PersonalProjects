package com.steam.service.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.ProductDto;
import com.steam.repository.CartMapper;

@Service
public class CartService {

	@Autowired
	CartMapper cMapper;

	public int addToCart(long memberNum, long productNum) {
		int result = cMapper.duplicationCheck(memberNum, productNum);
		if (result == 0) {
			cMapper.addToCart(memberNum, productNum);
			return 1;
		}
		return 0;
	}

	public List<ProductDto> loadCartList(long memberNum) {
		List<ProductDto> cList = cMapper.cartlistByMemberNum(memberNum);

		return cList;
	}

	public void deleteFromCart(long memberNum, long productNum) {
		cMapper.deleteFromCart(memberNum, productNum);
	}

}
