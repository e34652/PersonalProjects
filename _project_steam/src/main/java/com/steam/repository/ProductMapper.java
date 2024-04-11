package com.steam.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.steam.model.ProductDto;


@Mapper
public interface ProductMapper {

	int countProducts();
	
	ProductDto selectProductByNum(long num);
	
	ProductDto selectProductByGenre(String genre);
	
	ProductDto selectProductByName(String name);
	
    List<ProductDto> selectProductList();
    
    void insertProduct(ProductDto product);
    
    void updateProduct(ProductDto product);
    
    void deleteProduct(long num);
    
    
    
}
