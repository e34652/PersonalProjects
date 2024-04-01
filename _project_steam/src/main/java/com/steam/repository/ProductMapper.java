package com.steam.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.steam.model.Product;


@Mapper
public interface ProductMapper {

	int countProducts();
	
	Product selectProductByNum(int num);
	
	Product selectProductByGenre(String genre);
	
	Product selectProductNamePrice(String name);
	
    List<Product> selectProductList();
    
    void insertProduct(Product product);
    
    void updateProduct(Product product);
    
    void deleteProduct(int num);
    
    
    
}
