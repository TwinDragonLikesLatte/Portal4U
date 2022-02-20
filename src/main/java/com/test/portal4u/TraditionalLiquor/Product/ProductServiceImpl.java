package com.test.portal4u.TraditionalLiquor.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO dao;
	
	@Override
	public List<ProductDTO> list() {
		
		List<ProductDTO> list = dao.list();
		
		return list;
	}
	
	
}
