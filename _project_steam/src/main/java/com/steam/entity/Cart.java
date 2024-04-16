package com.steam.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;


@Entity
@Table(name = "Cart_tb", uniqueConstraints = @UniqueConstraint(columnNames = { "memberNum", "productNum" }))
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cartNum", columnDefinition = "bigint")
	private long Cart_num;

	@Column(name = "memberNum", columnDefinition = "bigint")
	private long member_num;

	@Column(name = "productNum", columnDefinition = "bigint")
	private long product_num;
	
	@Column(name = "productCount", columnDefinition = "bigint")
	private long product_count;
}
