package com.test.portal4u.NFT.NFTAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ActionController {
	
	@RequestMapping(value = "/NFTAction/main", method = { RequestMethod.GET })
	public String NFTAction(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "NFTAction.main";
	}

}
