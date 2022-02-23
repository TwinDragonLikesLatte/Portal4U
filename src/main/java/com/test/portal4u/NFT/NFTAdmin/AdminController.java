package com.test.portal4u.NFT.NFTAdmin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class AdminController {

	@Autowired
	private ProdService service;
	
	@RequestMapping(value = "/NFTAction/admin", method = { RequestMethod.GET })
	public String NFTAdmin(HttpServletRequest req, HttpServletResponse resp, HttpSession session, Model model) {

		List<NFTBoardDTO> list = service.list();		
		model.addAttribute("list",list);
		

		return "NFTAdmin.main";
	}
	
	@PostMapping("/NFTAction/admin/add")
	public String add(HttpServletRequest req, HttpServletResponse resp, ProdDTO dto) {
		System.out.println(dto);
		int result = service.add(dto, req);
		
		if (result == 1) {
			return "redirect:/NFTAction/admin";
		} else {
			return "redirect:/NFTAction/main";
		}
		
//		return "1";
	}
	
	
}
