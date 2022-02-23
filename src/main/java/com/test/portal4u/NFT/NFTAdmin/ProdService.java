package com.test.portal4u.NFT.NFTAdmin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;



public interface ProdService {

	int add(ProdDTO dto, HttpServletRequest req);

	List<NFTBoardDTO> list();
	

	
}
