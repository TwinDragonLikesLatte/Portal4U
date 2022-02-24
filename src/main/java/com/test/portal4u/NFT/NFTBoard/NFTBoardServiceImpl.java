package com.test.portal4u.NFT.NFTBoard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NFTBoardServiceImpl implements NFTBoardService {

	@Autowired
	NFTBoardDAO dao;
	
	@Override
	public List<NFTFreeBoardDTO> list() {
		
		return dao.list();
	}
	
	@Override
	public int add(NFTFreeBoardDTO dto, HttpServletRequest req) {
		// TODO Auto-generated method stub
		return dao.add(dto);
	}
	
	@Override
	public NFTFreeBoardDTO get(String seq) {
		// TODO Auto-generated method stub
		return dao.get(seq);
	}
}
