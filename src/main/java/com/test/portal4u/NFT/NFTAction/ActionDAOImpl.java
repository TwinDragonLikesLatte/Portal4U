package com.test.portal4u.NFT.NFTAction;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ActionDAOImpl implements ActionDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	@Override
	public List<NFTBoardDTO> list() {
		
		return template.selectList("action.list");
	}
	
	@Override
	public List<AcProdDTO> list2() {
		// TODO Auto-generated method stub
		return template.selectList("action.list2");
	}
}
