package com.test.portal4u.TraditionalLiquor.Board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 인터페이스 BoardService를 위임합니다.
 * @author JH LEE
 *
 */
@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;

	@Override
	public List<BoardDTO> list() {
		
		List<BoardDTO> list = dao.list();
		
		return list;
	}
	
	@Override
	public BoardDTO get(String seq_tlboard) {

		return dao.get(seq_tlboard);
	}
	
	@Override
	public int add(BoardDTO dto, HttpSession session, HttpServletRequest req) {
		
		return dao.add(dto);
	}
	
	
}
