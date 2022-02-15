package com.test.portaltest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.portaltest.test.MemoDTO;
import com.test.portaltest.test.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value = "/", method = { RequestMethod.GET })
	public String home(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "home.main";
	}



	@Autowired
	private TestService service;

	@RequestMapping(value="/test", method={RequestMethod.GET})
	public String testMain(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		//INSERT 테스트
		MemoDTO dto = new MemoDTO();
		dto.setName("조진욱");
		dto.setMemo("예제입니다.");
		int result = service.add(dto);

		//SELECT 테스트
		int count = service.countAll();

		req.setAttribute("result", result);
		req.setAttribute("count", count);

	    return "test.main";
	}

	
	
}
