package com.test.portal4u.TraditionalLiquor.Product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;
	
	@GetMapping(value = "/TraditionalLiquor/main.do")
	public String main(HttpServletRequest req, HttpServletResponse resp, HttpSession session, Model model) {

		List<ProductDTO> list = service.list();
		
		model.addAttribute("list", list);
		
		return "TraditionalLiquor.main";
	}
	
}
