package com.steam.service.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.LoginInfoDto;
import com.steam.repository.CartMapper;

@Service
public class AddToCartService {

	@Autowired
	CartMapper cMapper;

	@Autowired
	LoginInfoDto loginInfoDto;

	public String addToCart(long memberNum, long productNum) {
		if (loginInfoDto.getStatus() != "visitor") {
			int result = cMapper.duplicationCheck(memberNum, productNum);
			if (result == 0) {
				cMapper.addToCart(memberNum, productNum);
				return "성공";
			}
			return "중복";
		}
		return "비회원";
	}
}
