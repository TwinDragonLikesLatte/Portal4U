package com.test.portal4u.TraditionalLiquor.Board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface BoardService {

	List<BoardDTO> list();

	BoardDTO get(String seq_tlboard);

	int add(BoardDTO dto, HttpSession session, HttpServletRequest req);

	int edit(BoardDTO dto, HttpSession session, HttpServletRequest req, String del);


}
