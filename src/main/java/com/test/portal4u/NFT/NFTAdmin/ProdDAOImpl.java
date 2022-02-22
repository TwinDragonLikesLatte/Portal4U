package com.test.portal4u.NFT.NFTAdmin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProdDAOImpl implements ProdDAO {

	@Autowired
	private SqlSessionTemplate template;

	@Override
	public int add(ProdDTO dto) {
		// TODO Auto-generated method stub
		return template.insert("admin.add", dto);
	}
	
	@Override
	public List<NFTBoardDTO> list() {

		return template.selectList("admin.list");
	}

}
