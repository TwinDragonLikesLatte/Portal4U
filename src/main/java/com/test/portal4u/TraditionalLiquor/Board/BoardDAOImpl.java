package com.test.portal4u.TraditionalLiquor.Board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	@Override
	public List<BoardDTO> list() {

		return template.selectList("tlboard.list");
	}
	
	
	
}
