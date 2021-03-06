package com.test.portal4u.NFT.NFTAction;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ActionController {
	
	@Autowired
	private ActionService service;
	
	@RequestMapping(value = "/NFTAction/main", method = { RequestMethod.GET })
	public String NFTAction(HttpServletRequest req, HttpServletResponse resp, HttpSession session, Model model, String input_price) {

		List<NFTBoardDTO> list = service.list();
		
		model.addAttribute("list", list);
		
		List<AcProdDTO> list2 = service.list2();
		model.addAttribute("list2", list2);
		
//		System.out.println(input_price);
		model.addAttribute("input_price",input_price);

		return "NFTAction.main";
	}

}
