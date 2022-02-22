package com.test.portal4u.TraditionalLiquor.Board;

import java.util.List;
/**
 * 레시피 게시판 업무처리 관련 인터페이스입니다.
 * @author JH LEE
 *
 */
public interface BoardDAO {

	List<BoardDTO> list();

	BoardDTO get(String seq_tlboard);

	int add(BoardDTO dto);

	int edit(BoardDTO dto);

	

}
