package com.test.portal4u.NFT.NFTBoard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NFTBoardController {
	
	@Autowired
	private NFTBoardService service;
	
	@RequestMapping(value = "/NFTBoard/list", method = { RequestMethod.GET })
	public String list(HttpServletRequest req, HttpServletResponse resp, HttpSession session, Model model) {

		List<NFTFreeBoardDTO> list = service.list();
		
		model.addAttribute("list", list);

		return "NFTBoard.list";
	}
	
	@GetMapping("/NFTBoard/add")
	public String add(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		return "NFTBoard.add";
	}
	
	@PostMapping("/NFTBoard/addok")
	public String addok(HttpServletRequest req, HttpServletResponse resp, HttpSession session, NFTFreeBoardDTO dto) {
		
		System.out.println(dto);
		
		int result = service.add(dto, req);
		
		
		if (result == 1) {
			return "redirect:/NFTBoard/list";
		} else {
			return "redirect:/NFTBoard/add";
		}
	}
	
	@GetMapping("/NFTBoard/view")
	public String view(HttpServletRequest req, HttpSession session, HttpServletResponse resp, String seq, Model model) {
	
		NFTFreeBoardDTO dto = service.get(seq);
		model.addAttribute("dto", dto);
		
		System.out.println(dto);
		return "NFTBoard.view";
		
	}
}



























