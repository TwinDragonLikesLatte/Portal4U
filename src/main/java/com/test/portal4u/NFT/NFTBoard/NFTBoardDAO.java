package com.test.portal4u.NFT.NFTBoard;

import java.util.List;

public interface NFTBoardDAO {

	List<NFTFreeBoardDTO> list();

	int add(NFTFreeBoardDTO dto);

	NFTFreeBoardDTO get(String seq);

}
