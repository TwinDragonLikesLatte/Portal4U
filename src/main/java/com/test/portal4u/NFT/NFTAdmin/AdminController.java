package com.test.portal4u.NFT.NFTAdmin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	
	@RequestMapping(value = "/NFTAction/admin", method = { RequestMethod.GET })
	public String NFTAdmin(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "NFTAdmin.main";
	}
}
