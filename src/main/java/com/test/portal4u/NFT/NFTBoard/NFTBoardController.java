package com.test.portal4u.NFT.NFTBoard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NFTBoardController {
	
	@RequestMapping(value = "/NFTBoard/board", method = { RequestMethod.GET })
	public String NFTBoard(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "NFTBoard.board";
	}
}
