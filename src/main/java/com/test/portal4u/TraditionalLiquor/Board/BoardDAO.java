package com.test.portal4u.TraditionalLiquor.Board;

import java.util.List;

public interface BoardDAO {

	List<BoardDTO> list();

	BoardDTO get(String seq_tlboard);

	

}
