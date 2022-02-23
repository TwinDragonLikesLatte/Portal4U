package com.test.portal4u.NFT.NFTAction;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActionServiceImpl implements ActionService {

	@Autowired
	private ActionDAO dao;

	@Override
	public List<NFTBoardDTO> list() {

		List<NFTBoardDTO> list = dao.list();

		return list;
	}


}