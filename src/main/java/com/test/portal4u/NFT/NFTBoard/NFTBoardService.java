package com.test.portal4u.NFT.NFTBoard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface NFTBoardService {

	List<NFTFreeBoardDTO> list();

	int add(NFTFreeBoardDTO dto, HttpServletRequest req);

	NFTFreeBoardDTO get(String seq);
	
}
