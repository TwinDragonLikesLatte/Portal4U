package com.test.portal4u.TraditionalLiquor.Product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	@Override
	public List<ProductDTO> list() {
		return template.selectList("product.list");
	}

}
