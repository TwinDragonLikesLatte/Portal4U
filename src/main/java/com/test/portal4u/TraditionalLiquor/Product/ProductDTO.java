package com.test.portal4u.TraditionalLiquor.Product;

import lombok.Data;

@Data
public class ProductDTO {

	private String seq_product;			// 상품번호
	private String seq_sort;			// 주종 번호
	private String name;				// 상품명
	private String price;				// 가격
	private String abv;					// 도수
	private String volume;				// 용량
	private String img;					// 이미지파일명
	private String sort; 				// 주종
	private String introduce;			// 한줄소개
	private String detail;				// 설명
	private String storage;				// 보관방법
	private String life;				// 유통기한
	private String manufacturer;		// 제조사
	
}

