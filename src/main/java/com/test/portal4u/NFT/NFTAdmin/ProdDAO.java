package com.test.portal4u.NFT.NFTAdmin;

import java.util.List;



public interface ProdDAO {

	int add(ProdDTO dto);

	List<NFTBoardDTO> list();

	
}
