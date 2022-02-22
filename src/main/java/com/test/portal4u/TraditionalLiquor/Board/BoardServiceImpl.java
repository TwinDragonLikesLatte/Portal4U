package com.test.portal4u.TraditionalLiquor.Board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;

	@Override
	public List<BoardDTO> list() {
		
		List<BoardDTO> list = dao.list();
		
		return list;
	}
	
	
}
