package com.test.portal4u.NFT.NFTBoard;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NFTBoardDAOImpl implements NFTBoardDAO {
	
	@Autowired
	SqlSessionTemplate template;
	
	@Override
	public List<NFTFreeBoardDTO> list() {
		// TODO Auto-generated method stub
		return template.selectList("nftboard.list");
	}
	
	@Override
	public int add(NFTFreeBoardDTO dto) {
		// TODO Auto-generated method stub
		return template.insert("nftboard.add", dto);
	}
	
	@Override
	public NFTFreeBoardDTO get(String seq) {
		// TODO Auto-generated method stub
		return template.selectOne("nftboard.get",seq);
	}
}
